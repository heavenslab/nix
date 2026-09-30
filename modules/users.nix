{ pkgs, ... }:

{
  programs.zsh.enable = true;

  users.users.rafael = {
    isNormalUser = true;
    description = "Rafael";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$5$Nix2026$2MsSiPUfhnCWlLe3Ujkn1ii9Y.Bb4MI0y1Ab3eaAPr6";
  };
}