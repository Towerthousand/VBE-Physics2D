QT       -= core gui

TARGET = VBE-Physics2D
TEMPLATE = lib
CONFIG += staticlib

unix {
    target.path = /usr/lib
    INSTALLS += target
}

INCLUDEPATH += include src

include(../VBE-Scenegraph/VBE-Scenegraph.pri)
include(../VBE/VBE.pri)
include(../common.pri)

OTHER_FILES += \
    VBE-Physics2D.pri \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleAssembly.neon.s

SOURCES += \
    src/VBE-Physics2D/physics2D/Body.cpp \
    src/VBE-Physics2D/physics2D/CircleCollider.cpp \
    src/VBE-Physics2D/physics2D/Collider.cpp \
    src/VBE-Physics2D/physics2D/DistanceJoint.cpp \
    src/VBE-Physics2D/physics2D/Engine.cpp \
    src/VBE-Physics2D/physics2D/Joint.cpp \
    src/VBE-Physics2D/physics2D/ParticleSystem.cpp \
    src/VBE-Physics2D/physics2D/PolygonCollider.cpp \
    src/VBE-Physics2D/physics2D/RevoluteJoint.cpp \
    src/VBE-Physics2D/physics2D/WeldJoint.cpp \
    include/VBE-Physics2D/Box2D/Rope/b2Rope.cpp \
    include/VBE-Physics2D/Box2D/Particle/b2Particle.cpp \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleAssembly.cpp \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleGroup.cpp \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleSystem.cpp \
    include/VBE-Physics2D/Box2D/Particle/b2VoronoiDiagram.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2Body.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2ContactManager.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2Fixture.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2Island.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2World.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/b2WorldCallbacks.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2DistanceJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2FrictionJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2GearJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2Joint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2MotorJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2MouseJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2PrismaticJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2PulleyJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2RevoluteJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2RopeJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2WeldJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2WheelJoint.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2CircleContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2Contact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ContactSolver.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.cpp \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2PolygonContact.cpp \
    include/VBE-Physics2D/Box2D/Common/b2BlockAllocator.cpp \
    include/VBE-Physics2D/Box2D/Common/b2Draw.cpp \
    include/VBE-Physics2D/Box2D/Common/b2FreeList.cpp \
    include/VBE-Physics2D/Box2D/Common/b2Math.cpp \
    include/VBE-Physics2D/Box2D/Common/b2Settings.cpp \
    include/VBE-Physics2D/Box2D/Common/b2StackAllocator.cpp \
    include/VBE-Physics2D/Box2D/Common/b2Stat.cpp \
    include/VBE-Physics2D/Box2D/Common/b2Timer.cpp \
    include/VBE-Physics2D/Box2D/Common/b2TrackedBlock.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2BroadPhase.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2CollideCircle.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2CollideEdge.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2CollidePolygon.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2Collision.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2Distance.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2DynamicTree.cpp \
    include/VBE-Physics2D/Box2D/Collision/b2TimeOfImpact.cpp \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2ChainShape.cpp \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2CircleShape.cpp \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2EdgeShape.cpp \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2PolygonShape.cpp

HEADERS += \
    include/VBE-Physics2D/physics2D.hpp \
    include/VBE-Physics2D/VBE-Physics2D.hpp \
    include/VBE-Physics2D/physics2D/Body.hpp \
    include/VBE-Physics2D/physics2D/CircleCollider.hpp \
    include/VBE-Physics2D/physics2D/Collider.hpp \
    include/VBE-Physics2D/physics2D/Contact.hpp \
    include/VBE-Physics2D/physics2D/DebugDrawer.hpp \
    include/VBE-Physics2D/physics2D/DistanceJoint.hpp \
    include/VBE-Physics2D/physics2D/Engine.hpp \
    include/VBE-Physics2D/physics2D/Joint.hpp \
    include/VBE-Physics2D/physics2D/ParticleSystem.hpp \
    include/VBE-Physics2D/physics2D/PolygonCollider.hpp \
    include/VBE-Physics2D/physics2D/RevoluteJoint.hpp \
    include/VBE-Physics2D/physics2D/WeldJoint.hpp \
    include/VBE-Physics2D/Box2D/Box2D.h \
    include/VBE-Physics2D/Box2D/Rope/b2Rope.h \
    include/VBE-Physics2D/Box2D/Particle/b2Particle.h \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleAssembly.h \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleGroup.h \
    include/VBE-Physics2D/Box2D/Particle/b2ParticleSystem.h \
    include/VBE-Physics2D/Box2D/Particle/b2StackQueue.h \
    include/VBE-Physics2D/Box2D/Particle/b2VoronoiDiagram.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2Body.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2ContactManager.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2Fixture.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2Island.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2TimeStep.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2World.h \
    include/VBE-Physics2D/Box2D/Dynamics/b2WorldCallbacks.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2DistanceJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2FrictionJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2GearJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2Joint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2MotorJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2MouseJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2PrismaticJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2PulleyJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2RevoluteJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2RopeJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2WeldJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Joints/b2WheelJoint.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ChainAndCircleContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ChainAndPolygonContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2CircleContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2Contact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2ContactSolver.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2EdgeAndCircleContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2EdgeAndPolygonContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2PolygonAndCircleContact.h \
    include/VBE-Physics2D/Box2D/Dynamics/Contacts/b2PolygonContact.h \
    include/VBE-Physics2D/Box2D/Common/b2BlockAllocator.h \
    include/VBE-Physics2D/Box2D/Common/b2Draw.h \
    include/VBE-Physics2D/Box2D/Common/b2FreeList.h \
    include/VBE-Physics2D/Box2D/Common/b2GrowableBuffer.h \
    include/VBE-Physics2D/Box2D/Common/b2GrowableStack.h \
    include/VBE-Physics2D/Box2D/Common/b2IntrusiveList.h \
    include/VBE-Physics2D/Box2D/Common/b2Math.h \
    include/VBE-Physics2D/Box2D/Common/b2Settings.h \
    include/VBE-Physics2D/Box2D/Common/b2SlabAllocator.h \
    include/VBE-Physics2D/Box2D/Common/b2StackAllocator.h \
    include/VBE-Physics2D/Box2D/Common/b2Stat.h \
    include/VBE-Physics2D/Box2D/Common/b2Timer.h \
    include/VBE-Physics2D/Box2D/Common/b2TrackedBlock.h \
    include/VBE-Physics2D/Box2D/Collision/b2BroadPhase.h \
    include/VBE-Physics2D/Box2D/Collision/b2Collision.h \
    include/VBE-Physics2D/Box2D/Collision/b2Distance.h \
    include/VBE-Physics2D/Box2D/Collision/b2DynamicTree.h \
    include/VBE-Physics2D/Box2D/Collision/b2TimeOfImpact.h \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2ChainShape.h \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2CircleShape.h \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2EdgeShape.h \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2PolygonShape.h \
    include/VBE-Physics2D/Box2D/Collision/Shapes/b2Shape.h \
    src/VBE-Physics2D/physics2D/Utils.hpp \
    include/VBE-Physics2D/physics2D/Utils.hpp
