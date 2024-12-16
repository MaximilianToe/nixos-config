{pkgs, ... }:

{
	users.users.max = {
		home.file.".config/alacritty/alacritty.toml".source = /home/max/.dotfiles/.config/alacritty/alacritty.toml;
	};
}
