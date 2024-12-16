{

	programs.neovim = {
		enable = true;
		extraLuaConfig = '' 
		${builtins.readFile /home/max/.dotfiles/.config/nvim/init.lua}
		'';
};
}
