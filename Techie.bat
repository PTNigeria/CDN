@ECHO OFF
SET COMMITMESSAGE="Techie Inc. Autos:- %Date%".
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\PTNigeria
CD %LOCALDIR%


git init
xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y
git config --unset --global user.name
git config --unset --global user.email
git config --unset --local user.name
git config --unset  user.email
git config --unset  user.name
git config --unset  user.email


git config --local user.name PTNigeria
git config --local user.password iykesMan22
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

