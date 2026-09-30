{ inputs, ... }:

{
  imports = [ inputs.dms.nixosModules.dank-material-shell ];

  programs.niri.enable = true;

  programs.dank-material-shell = {
    enable = true;
    systemd.enable = true;
    niri.enableKeybinds = true;
    niri.enableSpawn = true;
  };
}