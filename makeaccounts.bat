@echo off
set name=PogoPlayer\accounts
if exist "%name%.csv" (
  ren "%name%.csv" "%name%-%date:/=-%-%time::=-%"
)
node index.js
cd PogoPlayer
node pogo.js
echo "Find the generated accounts in PogoPlayer/accounts.csv"
pause
