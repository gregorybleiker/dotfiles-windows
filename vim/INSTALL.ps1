rm -ErrorAction Ignore "$env:userprofile\_vimrc"
cmd /c mklink "$env:userprofile\_vimrc" "$env:userprofile\.dotfiles\vim\vimrc"
