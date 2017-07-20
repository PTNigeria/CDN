@ECHO OFF
SET COMMITMESSAGE="Techie Inc. Autos:- %Date%".
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\PTNigeria
xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y
CD %LOCALDIR%


git init
REM git config user.name PTNigeria
REM git config user.password iykesMan22
 git config user.email PTNigeriaplc@gmail.com
git remote add Local https://github.com/PTNigeria/CDN.git
git remote set-url --add Local https://github.com/PTNigeria/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v
git add --all :/
git commit -m %COMMITMESSAGE% :/
git push Local master
REM xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

PAUSE

