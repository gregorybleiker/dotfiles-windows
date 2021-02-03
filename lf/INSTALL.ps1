$destination = "$env:localappdata\lf\lfrc"
rm -ErrorAction Ignore $destination
cmd /c mklink $destination "$env:userprofile\.dotfiles\lf\lfrc"
