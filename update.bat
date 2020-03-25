echo off
hugo -t hugo-notepadium



cls
echo start update

timeout 3

echo start source commit
git add .
git commit -m "%1" 
git push origin master

echo end source commit
cls
echo start build commit

timeout 3

cd public
git add .
git commit -m "%1" 
git push origin master
echo done build commit, deploy

timeout 3

cd ..
echo on
