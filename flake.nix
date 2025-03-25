{
  description = "A flake that's used to develop this project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    flake-utils = {
        url = "github:numtide/flake-utils";
        inputs.systems.follows = "systems";
    };
  };

  outputs = { self, nixpkgs, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem (
      system:
    let
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.default = pkgs.mkShell {
        buildInputs = [
            pkgs.atlas
        ];
      };
    }
    );
}
