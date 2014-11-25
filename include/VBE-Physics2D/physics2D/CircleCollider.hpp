#ifndef CIRCLECOLLIDER_HPP
#define CIRCLECOLLIDER_HPP
#include <VBE-Physics2D/physics2D/Collider.hpp>

namespace Physics {

	class CircleCollider final : public Collider {
		public:
			CircleCollider();
			~CircleCollider() override;
	};

}

#endif // CIRCLECOLLIDER_HPP
