@del title-demo.o
@del title-demo.nes
@del title-demo.map.txt
@del title-demo.labels.txt
@del title-demo.nes.ram.nl
@del title-demo.nes.0.nl
@del title-demo.nes.1.nl
@del title-demo.nes.dbg
@echo.
@echo Compiling...
\cc65\bin\ca65 title-demo.s -g -o title-demo.o
@IF ERRORLEVEL 1 GOTO failure
@echo.
@echo Linking...
\cc65\bin\ld65 -o title-demo.nes -C title-demo.cfg title-demo.o -m title-demo.map.txt -Ln title-demo.labels.txt --dbgfile title-demo.nes.dbg
@IF ERRORLEVEL 1 GOTO failure
@echo.
@echo Success!
@GOTO endbuild
:failure
@echo.
@echo Build error!
:endbuild