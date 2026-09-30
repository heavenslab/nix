{ pkgs, ... }:

{
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.networkmanager.enable = true;
  networking.firewall.enable = true;

  environment.systemPackages = with pkgs; [
    curl
    git
    vim
    wget
  ];

  services.openssh.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "UTC";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}