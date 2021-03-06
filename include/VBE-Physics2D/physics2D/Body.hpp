#ifndef PHYSICSBODY_HPP
#define PHYSICSBODY_HPP
#include <vector>
#include <VBE-Scenegraph/scenegraph/GameObject.hpp>

namespace Physics {

	class BodyContact;
	class Collider;
	class ParticleBodyContact;
	class ParticleSystem;
	class Body : public GameObject {
		public:
			Body();
			virtual ~Body() override;
			int getColliderIndex(const Collider* col) const;
			int getNumColliders() const;
			bool getIgnoreAutoCollisions() const;
			void setIgnoreAutoCollisions(bool ignore);

		protected:
			virtual void update(float deltaTime) override {(void) deltaTime;}
			virtual void draw() const override {}

			void addCollider(Collider* newCollider);
			Collider* getCollider(unsigned int index) const;
			void deleteCollider(unsigned int index);

			virtual void onCollisionEnter(int colliderIndex, const BodyContact* contact);
			virtual void onCollisionExit(int colliderIndex, const BodyContact* contact);
			virtual void onCollision(int colliderIndex, const BodyContact* contact);
			virtual void onParticleCollisionEnter(const ParticleBodyContact* contact);
			virtual void onParticleCollisionExit(ParticleSystem* system, int particleIndex);

		private:
			friend class Engine;
			bool ignoreAutoCollisions = true;

			std::vector<Collider*> colliders;
	};

}

#endif // PHYSICSBODY_HPP
