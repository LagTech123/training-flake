{
  stdenv,
  fetchFromGitLab,
  ncurses,
  pkg-config,
  scdoc,
}:
stdenv.mkDerivation {
  pname = "cbonsai";
  version = "1.3.1";

  makeFlags = [ "PREFIX=$(out)" ];

  buildInputs = [
    ncurses
    pkg-config
    scdoc
  ];

  src = fetchFromGitLab {
    owner = "jallbrit";
    repo = "cbonsai";
    rev = "v1.3.1";
    hash = "sha256-XFK6DiIb8CzVubTnEMkqRW8xZkX/SWjUsrfS+I7LOs8=";
  };
}
