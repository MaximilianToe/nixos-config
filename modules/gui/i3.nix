{config, pkgs, ... }:

{



	services.xserver = {
		enable = true;
		windowManager.i3 = {
			extraPackages = with pkgs; [
				dmenu
				i3status
				i3lock
				i3blocks
				rofi
				polybar
			];
			enable = true;
			configFile =  /home/max/.dotfiles/.config/i3/config;	
		};

	displayManager.lightdm.enable = true;
	};

}

