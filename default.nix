{pkgs ? import <nixpkgs> {}} :

pkgs.runCommandNoCC
  "nixos-up"
  { buildInputs = with pkgs; [ ocaml jq ]; }
  "ocaml ${./nixos-up.ml}"
