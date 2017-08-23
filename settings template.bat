@ECHO OFF
REM Look up the Windows Credentials Manager during identity issues, delete git
REM list all branches
REM git config --system --unset credential.helper
REM cmdkey /lis (list all credentials
REM cmdkey /delete:git:https//...github.com... (removed credential)
REM git config --global credential.helper wincred (resets the git credentials)
REM git config credential.helper store (stores settings on disk)
REM $ git config credential.helper (Better)
REM git config credential.helper cache (use cache)
REM git config credential.helper 'store [options]'
REM git config credential.helper 'store file=C:\file.text'
REM git remote prune Local
REM git branch -a

cmdkey /delete:git:https//github.com
git config --system --unset credential.helper
git config credential.helper 'store file=C:\WEB\WEBFiles\IykeDairo\Plain\gits'

SET COMMITMESSAGE="Techie Inc. Autos:- %Date%".
SET LOCALDIR=C:\WEB\WEBFILES\IYKEDAIRO\PTNigeria
CD %LOCALDIR%

REM git config --global --unset core.askpass
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
git config --global user.name PTNigeria
git config --global user.password iykesMan22
REM git config user.name PTNigeria
REM git config user.password iykesMan22
git config --local user.email PTNigeriaplc@gmail.com

git remote add Local https://github.com/PTNigeria/CDN.git
git remote set-url --add Local https://github.com/PTNigeria/CDN.git
git pull Local master --allow-unrelated-histories
git remote -v
git add --all :/
git commit -m %COMMITMESSAGE% :/
git push Local master
REM xcopy C:\Web\WEBFILES\config %LOCALDIR%\.git\config /G /Y

PAUSE

