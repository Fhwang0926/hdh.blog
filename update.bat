echo off
hugo/hugo.exe -t hugo-notepadium

cls


echo start build commit
timeout 1

cd public
git add .
git commit -m "%1" 
git push origin master
echo done build commit, deploy

timeout 3

cls

cd ..

echo start source commit
git add .
git commit -m "%1" 
git push origin master

echo end source commit

echo on
