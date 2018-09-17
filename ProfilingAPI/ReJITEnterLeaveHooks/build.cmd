SET BuildType=Debug
SET BuildArch=x64
SET CORECLR_PATH=C:\Users\lucas\source\repos\dd-trace-csharp\lib\coreclr
msbuild /p:Configuration="%BuildType%" /p:BuildOS="Windows_NT" /p:BuildType="%BuildType%" /p:BuildArch="%BuildArch%" /p:CORECLR_PATH="%CORECLR_PATH%"