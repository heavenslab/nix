{
  description = "A flake for my personal NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  
  outputs = inputs@{nixpkgs, ...}: let
    entries = builtins.readDir ./hosts;
    hosts = builtins.filter
      (name: entries.${name} == "directory"
        && builtins.pathExists (./. + "/hosts/${name}/default.nix"))
      (builtins.attrNames entries);
  in {
    nixosConfigurations = nixpkgs.lib.genAttrs hosts (hostname:
      nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          (./. + "/hosts/${hostname}/default.nix")
        ];
      });
  };
}