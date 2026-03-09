@REM run as Administrator
@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads

set SEVENZIP=C:\"Program Files"\7-Zip\7z.exe

set PYTHON_DIR=%DOWNLOADS_DIR%\python-3.10.8-amd64-portable
set PYTHON_EXE=%PYTHON_DIR%\python.exe
if not exist %PYTHON_EXE% (
echo python %PYTHON_EXE% not found, downloading... &&^
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/dirkarnez/python-portable/releases/download/v3.10.8/python-3.10.8-amd64-portable.zip" -L -O &&^
%SEVENZIP% x python-3.10.8-amd64-portable.zip -o"%PYTHON_DIR%" &&^
del python-3.10.8-amd64-portable.zip
)

if exist %PYTHON_EXE% (
    echo python %PYTHON_EXE% found
)

set CMAKE_DIR=%DOWNLOADS_DIR%\cmake-3.29.3-windows-x86_64
set CMAKE_EXE=%CMAKE_DIR%\cmake-3.29.3-windows-x86_64\bin\cmake.exe
if not exist %CMAKE_EXE% (
echo cmake %CMAKE_EXE% not found, downloading... &&^
%SystemRoot%\System32\curl.exe "https://github.com/Kitware/CMake/releases/download/v3.29.3/cmake-3.29.3-windows-x86_64.zip" -L ^
--output "%TEMP%\cmake-3.29.3-windows-x86_64.zip" &&^
%SEVENZIP% x "%TEMP%\cmake-3.29.3-windows-x86_64.zip" -o"%CMAKE_DIR%" &&^
del "%TEMP%\cmake-3.29.3-windows-x86_64.zip"
)

if exist %CMAKE_EXE% (
    echo cmake %CMAKE_EXE% found
)

set GCC_DIR=%DOWNLOADS_DIR%\winlibs-x86_64-posix-seh-gcc-11.2.0-mingw-w64-9.0.0-r1
set GCC_EXE=%GCC_DIR%\mingw64\bin\gcc.exe
if not exist %GCC_EXE% (
@REM echo gcc %GCC_EXE% not found, downloading... &&^
@REM cd /d "%TEMP%" &&^
@REM %SystemRoot%\System32\curl.exe "https://download.qt.io/online/qtsdkrepository/windows_x86/desktop/tools_mingw1310/qt.tools.win64_mingw1310/13.1.0-202407240918mingw1310.7z" -L -O &&^
@REM %SEVENZIP% x 13.1.0-202407240918mingw1310.7z -o"%GCC_DIR%" &&^
@REM del 13.1.0-202407240918mingw1310.7z
)

if exist %GCC_EXE% (
    echo gcc %GCC_EXE% found
)

set GIT_DIR=%DOWNLOADS_DIR%\PortableGit
set GIT_EXE=%GIT_DIR%\bin\git.exe
if not exist %GIT_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.2/PortableGit-2.42.0.2-64-bit.7z.exe" -L -O &&^
PortableGit-2.42.0.2-64-bit.7z.exe -o%GIT_DIR% -y &&^
del PortableGit-2.42.0.2-64-bit.7z.exe
)

if exist %GIT_EXE% (
    echo git %GIT_EXE% found
)


set NINJA_DIR=%DOWNLOADS_DIR%\ninja-win
set NINJA_EXE=%NINJA_DIR%\ninja.exe
if not exist %NINJA_EXE% (
cd /d "%TEMP%" &&^
%SystemRoot%\System32\curl.exe "https://github.com/ninja-build/ninja/releases/download/v1.13.1/ninja-win.zip" -L -O &&^
%SEVENZIP% x ninja-win.zip -o"%NINJA_DIR%" &&^
del ninja-win.zip
)

if exist %NINJA_EXE% (
    echo ninja %NINJA_EXE% found
)
