{
	description = "adds a custom keyboard layout to NixOS";
	
	inputs.nixpkgs.url = github:NixOS/nixpkgs;

	outputs = {self, nixpkgs }: {
	nixosConfigurations = {
		my-hostname = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [
					({ config, pkgs, ... }: {
						environment.etc."X11/xkb/symbols/custom_layout" = {
							text = ''
								${builtins.readFile ./us}
							'';
						};
			services.xserver.layout = "custom_layout";
			services.xserver.enable = true;

			networking.hostName = "max";
		})
		];
		};
		};
		};
}
