{ config, pkgs, ... }:

{
	boot.loader.systemd-boot.enable = true;
	boot.loader.efi.canTouchEfiVariables = true;

	networking.hostName = "thinkpad";
	networking.networkmanager.enable = true;
	networking.firewall.enable = true;

	hardware.enableRedistributableFirmware = true;
	hardware.bluetooth.enable = true;

	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
	};

	services.openssh.enable = true;

	time.timeZone = "UTC";
	i18n.defaultLocale = "en_US.UTF-8";

	environment.systemPackages = with pkgs; [
		curl
		git
		vim
		wget
	];

	nix.settings.experimental-features = [ "nix-command" "flakes" ];

	system.stateVersion = "26.05";
}
