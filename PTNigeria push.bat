SET COMMITMESSAGE="Techie Inc. Autos:- %Date%"
   cmdkey /delete:https://github.com
   cmdkey /generic:git:https://PTNigeria@github.com /user:PTNigeria /pass:iykesMan22
git add --all :/
git commit -m %COMMITMESSAGE% :/
git push Local master
pause