echo off
hugo -t hugo-notepadium
cls



echo start update

sleep 3

echo start source commit
git add .
git commit -m "%1" 
git push origin master
echo end source commit

sleep 3

echo start build commit
cd public
git add .
git commit -m "%1" 
git push origin master
echo done build commit, deploy

sleep 3

cd ..
echo on
