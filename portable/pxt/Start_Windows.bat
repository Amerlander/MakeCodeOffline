@echo off
netstat -na | findstr "3232.*0.0.0.0:0"  >nul

if ERRORLEVEL 1 (
    
    cd MakeCode

    REM cd projects
    REM for /d %%i in ("*") do (
    REM     powershell -command "& {$(Get-Item '%%i').creationtime=$(Get-Date)}"
    REM     powershell -command "& {$(Get-Item '%%i').lastaccesstime=$(Get-Date)}"
    REM     powershell -command "& {$(Get-Item '%%i').lastwritetime=$(Get-Date)}"
    REM     cd "%%i"
    REM         powershell -command "& {$(Get-Item main.blocks).creationtime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item main.ts).creationtime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item pxt.json).creationtime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item Readme.md).creationtime=$(Get-Date)}"

    REM         powershell -command "& {$(Get-Item main.blocks).lastaccesstime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item main.ts).lastaccesstime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item pxt.json).lastaccesstime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item Readme.md).lastaccesstime=$(Get-Date)}"

    REM         powershell -command "& {$(Get-Item main.blocks).lastwritetime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item main.ts).lastwritetime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item pxt.json).lastwritetime=$(Get-Date)}"
    REM         powershell -command "& {$(Get-Item Readme.md).lastwritetime=$(Get-Date)}"
    REM     cd ..
    REM )
    REM cd ..

    start ../inc/nodew-windows.exe ../inc/yarn.js start

) else (
    explorer "http://localhost:3232"
)
exit