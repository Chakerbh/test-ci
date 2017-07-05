{ pkgs ? import <nixpkgs> {}
,src ? ./. }:

{
  test = pkgs.stdenv.mkDerivation {
    name = "test-cid";
    src =  src;
    installPhase = ''
      mkdir $out
      cp ./test $out/test
      exit 1
      '';
  };
  test1 = pkgs.stdenv.mkDerivation {
    name = "test-cid1";
    src =  src;
    installPhase = ''
      mkdir $out
      cp ./test $out/test
      '';
  };
}
