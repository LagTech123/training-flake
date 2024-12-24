{ stdenv, fetchurl }:
stdenv.mkDerivation {
  name = "hello";
  version = "2.12";

  src = fetchurl {
    url = "https://ftp.gnu.org/gnu/hello/hello-2.12.tar.gz";
    hash = "sha256-zwSvhtwIUmjF9EcPuuSbGK+8Iht4CWqrhC2TSna60Ks=";
  };
}
