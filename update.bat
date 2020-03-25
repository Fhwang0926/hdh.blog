echo off
hugo -t hugo-notepadium
cls



echo start update


echo start source commit
git add .
git commit -m "%1" 
git push
echo end source commit

echo start build commit
cd public
git add .
git commit -m "%1" 
git push
echo done build commit, deploy
cd ..
echo on
