@ECHO OFF
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\PTNigeria
CD %LOCALDIR%
xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

git init
cmdkey /delete:git:https//github.com
git config --system --unset credential.helper
git config credential.helper 'store file=C:\WEB\WEBFiles\IykeDairo\Plain\gits'
git config --local user.name PTNigeria
git config --local user.password iykesMan22
git config --local user.email PTNigeriaplc@gmail.com
git remote add Local https://github.com/PTNigeria/CDN.git
git remote set-url --add Local https://github.com/PTNigeria/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v

PAUSE

