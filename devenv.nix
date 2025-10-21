{ pkgs, lib, config, inputs, ... }:

{
  languages.python = {
    enable = true;
    venv.enable = true;
    uv.enable = true;
    package = pkgs.python312;
  };
  enterShell = ''
    clear
  '';
  packages = with pkgs; [
    ninja
    libGL
  ];
}
