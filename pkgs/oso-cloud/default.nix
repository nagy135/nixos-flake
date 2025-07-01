{ lib, stdenv, fetchurl }:

stdenv.mkDerivation rec {
  pname = "oso-cloud";
  version = "0.32.1";

  src = fetchurl {
    url = "https://d3i4cc4dqewpo9.cloudfront.net/${version}/oso_cli_linux_musl";
    sha256 = "1w775ai1c766mcdshs5iy0337wqnpqvi1q71sf2cv867airjp1kl";
  };

  dontUnpack = true;
  dontBuild = true;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin
    cp $src $out/bin/oso-cloud
    chmod +x $out/bin/oso-cloud

    runHook postInstall
  '';

  meta = with lib; {
    description = "Oso Cloud CLI - Authorization as a service";
    homepage = "https://cloud.osohq.com/";
    license = licenses.unfree;
    platforms = [ "x86_64-linux" ];
    maintainers = [ ];
  };
} 
