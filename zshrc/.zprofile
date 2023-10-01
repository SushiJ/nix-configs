alias nvim-lazy="NVIM_APPNAME=LazyVim nvim"
alias nvim-kick="NVIM_APPNAME=kickstart nvim"
alias nvim-chad="NVIM_APPNAME=NvChad nvim"
alias nvim-astro="NVIM_APPNAME=AstroNvim nvim"
alias zc="nvim ~/.zshrc"
alias wmrc="cd ~/.config/bspwm/ && nvim ." 
alias conf="cd ~/.config && nvim ." 
alias nconf="cd ~/.config/nvim/ && nvim ." 
alias update="sudo nala update"
alias n="nvim"
alias l="exa -l"
alias la="exa -la"
alias cat="bat"
alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"

function nvims() {
	items=("default" "kickstart" "LazyVim" "NvChad" "AstroNvim")
	config=$(printf "%s\n" "${items[@]}" | fzf --prompt=" Neovim Config  " --height=50% --layout=reverse --border --exit-0)
	if [[ -z $config ]]; then
		echo "Nothing selected"
		return 0
	elif [[ $config == "default" ]]; then
		config=""
	fi
	NVIM_APPNAME=$config nvim $@
}

bindkey -s ^a "nvims\n
