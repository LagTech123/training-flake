#This is the toolbox containing the things we need to build and operate a PKG
{
  stdenv,
  fetchFromGitHub,
  ncurses,
  autoreconfHook,
}:
#This is the bill of materials and instructions
stdenv.mkDerivation {
  pname = "cmatrix";
  version = "2.0";
  #This is the tools we need to build
  nativeBuildInputs = [
    autoreconfHook
  ];
  buildInputs = [
    ncurses
  ];
  #Bill of lading for the things we are fetching the route
  src = fetchFromGitHub {
    owner = "abishekvashok";
    repo = "cmatrix";
    tag = "v2.0";
    hash = "sha256-dWlVWSRIE1fPa6R2N3ONL9QJlDQEqxfdYIgWTSr5MsE=";
  };
}
