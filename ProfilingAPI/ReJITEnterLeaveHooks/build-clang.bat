@echo off

SET CORECLR_PATH=C:\Users\lucas\source\repos\dd-trace-csharp\lib\coreclr
SET BuildOS=Windows_NT
SET BuildArch=x64
SET BuildType=Debug

SET CXX_FLAGS=--no-undefined -Wno-invalid-noreturn -fms-extensions -DBIT64 -DPAL_STDCPP_COMPAT -DPLATFORM_WINDOWS -DAMD64 -D_AMD64_ -DWIN64 -std=c++17 -fms-compatibility-version=19.15.26729
SET INCLUDES=-I %CORECLR_PATH%\src\pal\inc\rt -I %CORECLR_PATH%\src\pal\prebuilt\inc -I %CORECLR_PATH%\src\pal\inc -I %CORECLR_PATH%\src\inc

clang++ -shared -o $Output %CXX_FLAGS% %INCLUDES% ClassFactory.cpp CorProfiler.cpp dllmain.cpp ILRewriter.cpp
