HEADERS += $$files($$PWD/*.h)
SOURCES += $$files($$PWD/*.cpp)

unix:!macx {
    CONFIG += link_pkgconfig
    PKGCONFIG += libarchive
}
win32: {
    LIBS += -larchive_static -lz
}
macx: {
	LIBS += /usr/local/opt/libarchive/.libs/libarchive.a
	LIBS += /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/lib/libarchive.2.tbd
	LIBS += /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/lib/libbz2.tbd
	LIBS += /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/lib/libz.tbd
	LIBS += /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/lib/libxml2.tbd
	LIBS += /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.11.sdk/usr/lib/libiconv.tbd
	INCLUDEPATH += /usr/local/opt/libarchive/libarchive
}
