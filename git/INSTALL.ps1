Remove-Item -Force -ErrorAction SilentlyContinue "$env:userprofile\.gitconfig"
New-Item -Path "$env:userprofile\.gitconfig" -ItemType SymbolicLink -Value "$env:userprofile\.dotfiles\git\.gitconfig"