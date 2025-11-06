param(
    [switch]$force
)

$_force = $force ? '--force' : $null
$date = Get-Date -Format 'dddd d/M/yy - h:mm tt'

git add .
git commit -S -m "push repatition_cvv $date"
git remote add origin "https://benzaria@github.com/benzaria/repatition_cvv"
git push origin main $_force
