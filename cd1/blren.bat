rem v0.3.3

echo off 
IF "%1"=="2_c" (
  GOTO No1_2_c
)ELSE (
  IF "%1"=="1sb" (
    GOTO No1_1sb
  ) ELSE (
    IF "%1"=="1_03b" (
      GOTO No1_1_03b
    ) ELSE (
      GOTO No1
    )
  )
)

:No1_1_03b
echo p1 is 1_03b :----------------------------------------------
for /f "tokens=1* delims=_" %%a in ('dir /b "*_??.mp3"') do (
	ren "%%a_%%b" %%a_0%%b
)
echo p1 = 2_  :==============================================
goto End1

:No1_1sb
echo p1 is 1sc :----------------------------------------------
for /f "tokens=1* delims= " %%a in ('dir /b "* *"') do (
	ren "%%a %%b" %2_%%b
)
echo p1 = 2_  :==============================================
goto End1


:No1_2_c
echo p1 is 2_c :----------------------------------------------
for /f "tokens=1,2* delims=_" %%a in ('dir /b *_*') do (
	ren "%%a_%%b_%%c" %2_%%c
)
echo p1 = 2_  :==============================================
goto End1

:No1
echo p1 is %1
echo	*****************************************************************
echo    1): blren 2_c 	A14     ren 	"VTS_1_1.vob"   	A14_1.vob
echo    2): blren 1sb 	a18    	ren 	"Track 1.mp3"   	a18_1.mp3
echo    3): blren 1_03b	   	ren 	"a18_1.mp3"	   	a18_001.mp3
echo	*****************************************************************

if "%2"=="" (
  GOTO No2
)
echo p1 = %1
echo p2 = %2

GOTO End1

:No2
echo p2 is empty
goto End1

:End1
echo ====
