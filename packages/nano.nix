{
  stdenv,
  fetchurl,
  ncurses,
}:
stdenv.mkDerivation {
  pname = "nano";
  version = "8.3";

  buildInputs = [
    ncurses
  ];

  src = fetchurl {
    url = "https://www.nano-editor.org/dist/v8/nano-8.3.tar.xz";
    hash = "sha256-VRtxey4o9+kPdJMjaGobW7vYTPoTkGBNhUo8o3ePER4=";
  };
}
