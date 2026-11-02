let
  sources = import ./npins;

  pkgs = import sources.nixpkgs {
    config = { };
    overlays = [ ];
  };
in
pkgs.mkShell {
  packages = [
    pkgs.prettier
  ];
}
