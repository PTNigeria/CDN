@ECHO OFF
SET COMMITMESSAGE="Techie Inc. Autos:- %Date%".
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\PTNigeria
REM xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y
CD %LOCALDIR%


git init
git config global user.name PTNigeria
git config global user.password iykesMan22
git config global user.email PTNigeriaplc@gmail.com
git remote add Local https://github.com/PTNigeria/CDN.git
git remote set-url --add Local https://github.com/PTNigeria/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v
git add --all :/
git commit -m %COMMITMESSAGE% :/
git push Local master
 Rem xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

PAUSE

