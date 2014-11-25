INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

LIBS += -lVBE-Physics2D

# This is needed so the game is recompiled every time
# we change something in VBE-Physics2D
PRE_TARGETDEPS += ../VBE-Physics2D/libVBE-Physics2D.a

win32 {
        CONFIG(release, debug|release): LIBS += -L$$OUT_PWD/../VBE-Physics2D/release/
        CONFIG(debug, debug|release): LIBS += -L$$OUT_PWD/../VBE-Physics2D/debug/

        CONFIG(release, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../VBE-Physics2D/release/VBE-Physics2D.lib
        CONFIG(debug, debug|release): PRE_TARGETDEPS += $$OUT_PWD/../VBE-Physics2D/debug/VBE-Physics2D.lib
}

unix {
        LIBS += -L$$OUT_PWD/../VBE-Physics2D/
        PRE_TARGETDEPS += $$OUT_PWD/../VBE-Physics2D/libVBE-Physics2D.a
}
