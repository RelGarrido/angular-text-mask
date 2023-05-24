cd angular2
rmdir /S /Q dist
rmdir /S /Q ".git"
call npm i
call ".\node_modules\.bin\ngc.cmd" -p .\tsconfig.json
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:RelGarrido/angular-text-mask.git master:npm