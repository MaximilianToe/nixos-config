{config, pkgs, ... }:

{

	services.xserver.windowManager.i3.enable = true;

	services.xserver.enable = true;

	environment.systemPackages = with pkgs; [
		i3
		i3status
		dmenu
	];
}

