#include <VBE-Physics2D/physics2D/CircleCollider.hpp>

namespace Physics {

	CircleCollider::CircleCollider() {
		b2CircleShape newshape;
		newshape.m_radius = 1.0f;
		type = Circle;
		remake(&newshape);
	}

	CircleCollider::~CircleCollider(){
	}

}
