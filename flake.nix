{
  description = "peglah's dwm build";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

  outputs = { self, nixpkgs }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.x86_64-linux.default = pkgs.dwm.overrideAttrs (old: {
      src = self;
    });
  };
}
