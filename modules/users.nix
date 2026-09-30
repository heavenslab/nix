{ pkgs, ... }:

{
  users.mutableUsers = false;
  programs.zsh.enable = true;

  users.users.rafael = {
    isNormalUser = true;
    description = "Rafael";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$5$rounds=535000$Nix2026$K2CehYGJB68o.6GfXpDhfM8pJz5mj29qxLaGxL60zn1";
  };
}