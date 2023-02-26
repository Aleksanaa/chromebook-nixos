{
  description = "Chromebook nixos modules";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ { self, nixpkgs, ... }:let
    inherit (nixpkgs) lib;
    genSystems = lib.genAttrs [
      # Add other architectures if they are supported chromeos devices
      "aarch64-linux"
      "x86_64-linux"
    ];
  in
  {
    nixosModules.default = null;
  };
}
