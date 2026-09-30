{ ... }:

{
  imports = [
    ../../modules/audio.nix
    ../../modules/desktop.nix
    ../../modules/system.nix
    ../../modules/users.nix
  ];

  networking.hostName = "thinkpad";

  system.stateVersion = "26.05";
}