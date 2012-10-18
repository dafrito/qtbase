TEMPLATE = lib
TARGET = libEGL

include(../common/common.pri)

LIBS += -ld3d9 -ldxguid -ldwmapi \
        -L$$QT_BUILD_TREE/lib -llibGLESv2

HEADERS += \
    $$ANGLE_DIR/src/libEGL/Config.h \
    $$ANGLE_DIR/src/libEGL/Display.h \
    $$ANGLE_DIR/src/libEGL/main.h \
    $$ANGLE_DIR/src/libEGL/resource.h \
    $$ANGLE_DIR/src/libEGL/ShaderCache.h \
    $$ANGLE_DIR/src/libEGL/Surface.h

SOURCES += \
    $$ANGLE_DIR/src/libEGL/Config.cpp \
    $$ANGLE_DIR/src/libEGL/Display.cpp \
    $$ANGLE_DIR/src/libEGL/libEGL.cpp \
    $$ANGLE_DIR/src/libEGL/main.cpp \
    $$ANGLE_DIR/src/libEGL/Surface.cpp

load(qt_installs)

egl_headers.files = \
    $$ANGLE_DIR/include/EGL/egl.h \
    $$ANGLE_DIR/include/EGL/eglext.h \
    $$ANGLE_DIR/include/EGL/eglplatform.h
egl_headers.path = $$[QT_INSTALL_HEADERS]/EGL
INSTALLS += egl_headers