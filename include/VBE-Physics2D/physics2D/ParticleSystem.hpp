#ifndef PARTICLESYSTEM_HPP
#define PARTICLESYSTEM_HPP

#include <VBE/math.hpp>
#include <VBE-Scenegraph/scenegraph/GameObject.hpp>
#include <VBE-Physics2D/Box2D/Box2D.h>
#include <VBE-Physics2D/physics2D/Engine.hpp>

namespace Physics {

	enum ParticleFlag {
		WaterParticle = b2_waterParticle,
		ZombieParticle = b2_zombieParticle,
		WallParticle = b2_wallParticle,
		SpringParticle = b2_springParticle,
		ElasticParticle = b2_elasticParticle,
		ViscousParticle = b2_viscousParticle,
		PowderParticle = b2_powderParticle,
		TensileParticle = b2_tensileParticle,
		ColorMixingParticle = b2_colorMixingParticle,
		DestructionListenerParticle = b2_destructionListenerParticle,
		BarrierParticleParticle = b2_barrierParticle,
		StaticPressureParticle = b2_staticPressureParticle,
		ReactiveParticle = b2_reactiveParticle,
		RepulsiveParticle = b2_repulsiveParticle,
		FixtureContactListenerParticle = b2_fixtureContactListenerParticle,
		ParticleContactListenerParticle = b2_particleContactListenerParticle,
		FixtureContactFilterParticle = b2_fixtureContactFilterParticle,
		ParticleContactFilterParticle = b2_particleContactFilterParticle,
	};

	struct ParticleDef {
			ParticleDef() {}

			unsigned int flags = 0;
			vec2f position = vec2f(0.0f);
			vec2f velocity = vec2f(0.0f);
			vec4uc color = vec4uc(0);
			float lifetime = 0.0f;
			void* userData = nullptr;
	};

	struct ParticleHandle {
			~ParticleHandle() {delete handle;}
			int getIndex() const {return handle->GetIndex();}
		private:
			ParticleHandle(b2ParticleSystem* sys, int index) {
				VBE_ASSERT(index >= 0 && index < sys->GetParticleCount(), "Invalid particle index when requesting handle");
				handle = sys->GetParticleHandleFromIndex(index);
			}
			const b2ParticleHandle* handle = nullptr;
			friend class ParticleSystem;
	};

	class ParticleContact;
	class ParticleBodyContact;
	class Collider;
	class ParticleSystem : public GameObject {
		public:
			ParticleSystem();
			virtual ~ParticleSystem() override;

			int createParticle(const ParticleDef& def);
			ParticleHandle getParticleHandleFromIndex(int index);
			void destroyParticle(int index) {destroyParticle(index, false);}
			void destroyParticle(int index, bool callDestructionListener);
			void destroyOldestParticle(int index, bool callDestructionListener);
			//		b2ParticleGroup* CreateParticleGroup(const b2ParticleGroupDef& def);
			//		void JoinParticleGroups(b2ParticleGroup* groupA, b2ParticleGroup* groupB);
			//		void SplitParticleGroup(b2ParticleGroup* group);
			//		b2ParticleGroup* getParticleGroupList();
			//		const b2ParticleGroup* getParticleGroupList() const;
			//		int getParticleGroupCount() const;
			int getParticleCount() const;
			int getMaxParticleCount() const;
			void setMaxParticleCount(int count);
			unsigned int GetAllParticleFlags() const;
			//		unsigned int GetAllGroupFlags() const;
			void setPaused(bool paused);
			bool getPaused() const;
			void setDensity(float density);
			float getDensity() const;
			void setGravityScale(float gravityScale);
			float getGravityScale() const;
			void setDamping(float damping);
			float getDamping() const;
			void setStaticPressureIterations(int iterations);
			int getStaticPressureIterations() const;
			void setRadius(float radius);
			float getRadius() const;
			vec2f* getPositionBuffer();
			const vec2f* getPositionBuffer() const;
			vec2f* getVelocityBuffer();
			const vec2f* getVelocityBuffer() const;
			vec4uc* getColorBuffer();
			const vec4uc* getColorBuffer() const;
			//		b2ParticleGroup* const* getGroupBuffer();
			//		const b2ParticleGroup* const* getGroupBuffer() const;
			float* GetWeightBuffer();
			const float* GetWeightBuffer() const;
			void** getUserDataBuffer();
			void* const* getUserDataBuffer() const;
			const unsigned int* getFlagsBuffer() const;
			void setParticleFlags(int index, unsigned int flags);
			unsigned int getParticleFlags(int index);
			void setFlagsBuffer(unsigned int* buffer, int capacity);
			void setPositionBuffer(vec2f* buffer, int capacity);
			void setVelocityBuffer(vec2f* buffer, int capacity);
			void setColorBuffer(vec4uc* buffer, int capacity);
			void setUserDataBuffer(void** buffer, int capacity);
			//		const b2ParticleContact* getContacts();
			//		int getContactCount();
			//		const b2ParticleBodyContact* getBodyContacts();
			//		int getBodyContactCount();
			//		const b2ParticlePair* GetPairs() const;
			//		int32 GetPairCount() const;
			//		const b2ParticleTriad* GetTriads() const;
			//		int32 GetTriadCount() const;
			void setStuckThreshold(int iterations);
			const int* getStuckCandidates() const;
			int getStuckCandidateCount() const;
			float computeCollisionEnergy() const;
			void setStrictContactCheck(bool enabled);
			bool getStrictContactCheck() const;
			void setParticleLifetime(int index, float lifetime);
			float getParticleLifetime(int index);
			void setDestructionByAge(bool enable);
			bool getDestructionByAge() const;
			const int* getExpirationTimeBuffer();
			float expirationTimeToLifetime(int expirationTime) const;
			const int* getIndexByExpirationTimeBuffer();
			void particleApplyLinearImpulse(int index, const vec2f& impulse);
			void applyLinearImpulse(int firstIndex, int lastIndex, const vec2f& impulse);
			void particleApplyForce(int index, const vec2f& force);
			void applyForce(int firstIndex, int lastIndex, const vec2f& force);
			void queryAABB(QueryCallback* callback, const AABB& aabb) const;
			//		void RayCast(b2RayCastCallback* callback, const vec2f& point1,
			//					 const vec2f& point2) const;
			//		void ComputeAABB(b2AABB* const aabb) const;

		protected:
			virtual void update(float deltaTime) override;
			virtual void draw() const override;
			virtual void onParticleCollisionEnter(const ParticleContact* contact);
			virtual void onParticleCollisionExit(int indexA, int indexB);
			virtual void onBodyCollisionEnter(const ParticleBodyContact* contact);
			virtual void onBodyCollisionExit(int index, Physics::Collider* collider);

		private:
			class SystemQueryCallback final : public b2QueryCallback {
				public:
					SystemQueryCallback() {}
					~SystemQueryCallback() override {}
					bool ReportFixture(b2Fixture *fixture) override;
					bool ReportParticle(const b2ParticleSystem* particleSystem, int32 index) override;
					bool ShouldQueryParticleSystem(const b2ParticleSystem* particleSystem) override { (void) particleSystem; return true;}
					void reset(QueryCallback* newCallback, const ParticleSystem* system);

					QueryCallback* callback = nullptr;
					ParticleSystem* callbackSystem = nullptr;
			};

			friend class Engine;

			mutable SystemQueryCallback queryCallback;
			b2ParticleSystem* sys = nullptr;
	};

}

#endif // PARTICLESYSTEM_HPP
