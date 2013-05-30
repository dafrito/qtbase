!win32|contains(QT_CONFIG, freetype):!mac {
    include($$PWD/basic/basic.pri)
}

!win32|contains(QT_CONFIG, system-freetype):!mac {
    QMAKE_CXXFLAGS += $$QMAKE_CFLAGS_FONTCONFIG
    QMAKE_LIBS += $$QMAKE_LIBS_FONTCONFIG
    include($$PWD/basic/basic.pri)
}

unix:!mac {
    CONFIG += qpa/genericunixfontdatabase
    include($$PWD/genericunix/genericunix.pri)
    contains(QT_CONFIG,fontconfig) {
        include($$PWD/fontconfig/fontconfig.pri)
    }
}

mac {
    include($$PWD/mac/coretext.pri)
}

