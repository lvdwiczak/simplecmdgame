@ECHO OFF
color 2
set /p liczba="podaj liczbe w zakresie 1 do 100 "
if "%liczba%" EQU "" goto blad
if /i %liczba% LSS 1 goto blad
if /i %liczba% GTR 100 goto blad

goto powrot

:blad
color 3
echo Popelniles blad sam przypisze liczbe
set liczba=22
:powrot
color b
set /p variable="jaka liczbe wylosowalem "
if "%variable%" EQU "" (echo wyzywanko) && goto powrot
if %variable%==%liczba% goto koniec
if not %variable%==%liczba% goto podpowiedz

:podpowiedz
color 3
echo "zle :( "
IF %liczba% GTR %variable% echo "liczba jest wieksza"
IF %liczba% LSS %variable% echo "liczba jest mniejsza"
pause
cls
goto powrot

:koniec
cls
color 6
echo "udalo ci sie! "
echo "Szukana liczba to %liczba%"
pause 