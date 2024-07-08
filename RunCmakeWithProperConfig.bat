mkdir .\build
pushd .\build

set ES_LIB_DIR=..\win32-libs

..\cmake-3.14.6-win32-x86\bin\cmake.exe -g "Visual Studio 14 2015 x86" .. -DEIGEN3_INCLUDE_DIR=%ES_LIB_DIR%\eigen -DRAPIDJSON_INCLUDE_DIRS=%ES_LIB_DIR%\rapidjson\include -DFREETYPE_INCLUDE_DIRS=%ES_LIB_DIR%\freetype\include  -DFREETYPE_LIBRARIES=%ES_LIB_DIR%\freetype\x86\freetype.lib -DFreeImage_INCLUDE_DIR=%ES_LIB_DIR%\FreeImage\include -DFreeImage_LIBRARY=%ES_LIB_DIR%\FreeImage\x86\FreeImage.lib -DSDL2_INCLUDE_DIR=%ES_LIB_DIR%\SDL2\include -DSDL2_LIBRARY=..\%ES_LIB_DIR%\SDL2\x86\SDL2.lib;..\%ES_LIB_DIR%\SDL2\x86\SDL2main.lib;Imm32.lib;version.lib -DBOOST_ROOT=%ES_LIB_DIR%\boost_1_61_0 -DBoost_LIBRARY_DIR=%ES_LIB_DIR%\boost_1_61_0\lib32-msvc-14.0 -DCURL_INCLUDE_DIR=%ES_LIB_DIR%\curl\x86\include -DCURL_LIBRARY=..\%ES_LIB_DIR%\curl\x86\lib\libcurl.lib -DVLC_INCLUDE_DIR=%ES_LIB_DIR%\libvlc\include -DVLC_LIBRARIES=%ES_LIB_DIR%\libvlc\x86\libvlc.lib;%ES_LIB_DIR%\libvlc\x86\libvlccore.lib -DVLC_VERSION=1.0.0 -DSDLMIXER_INCLUDE_DIR=%ES_LIB_DIR%\SDL2_mixer\include -DSDLMIXER_LIBRARY=%ES_LIB_DIR%\SDL2_mixer\x86\SDL2_mixer.lib
pause
