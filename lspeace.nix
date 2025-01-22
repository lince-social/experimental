{
  pkgs ? import <nixpkgs> { },
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    # postgresql_17
    go
    # lua
  ];
  shellHook = ''
    cd ${toString ./.}
    nvim
  '';
}
