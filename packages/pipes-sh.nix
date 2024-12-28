{
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "pipes.sh";
  version = "1.3.0";

  src = fetchFromGitHub {
    owner = "Pipeseroni";
    repo = "pipes.sh";
    tag = "v1.3.0";
    hash = "sha256-856OWlnNiGB20571TJg7Ayzcz4r6NqdW5DMDiim09mc=";
  };

  dontBuild = true;
  makeFlags = [ "PREFIX=$(out)" ];
}
