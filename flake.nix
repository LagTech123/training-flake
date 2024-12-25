{
  description = "Flake for training dev team";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs =
    { flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "aarch64-linux"
        "x86_64-linux"
      ];

      perSystem =
        { pkgs, ... }:
        {
          packages = {
            hello = pkgs.callPackage ./packages/hello.nix { };
            cbonsai = pkgs.callPackage ./packages/cbonsai.nix { };
          };

          formatter =
            let
              treefmt-eval = inputs.treefmt-nix.lib.evalModule pkgs ./treefmt.nix;
            in
            treefmt-eval.config.build.wrapper;
        };
    };
}
