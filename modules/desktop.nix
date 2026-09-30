{ inputs, ... }:

{
  imports = [ inputs.dms.nixosModules.dank-material-shell ];

  programs.niri.enable = true;
  programs.niri.settings.spawn-at-startup = [
    { command = [ "dms" "run" ]; }
  ];

  programs.dank-material-shell = {
    enable = true;
    systemd.enable = true;
  };
}