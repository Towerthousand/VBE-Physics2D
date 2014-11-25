#ifndef UTILS_PHYSICS2D_HPP
#define UTILS_PHYSICS2D_HPP
#include <VBE-Physics2D/Box2D/Box2D.h>
#include <VBE/math.hpp>

namespace Utils {
	inline vec2f B2Dv2ToGLMv2(const b2Vec2& v) {return vec2f(v.x,v.y);}
	inline b2Vec2 GLMv2ToB2Dv2(const vec2f& v) {return b2Vec2(v.x,v.y);}
}

#endif // UTILS_PHYSICS2D_HPP
