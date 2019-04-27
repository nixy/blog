with (import <nixpkgs> {});
let
  jekyll_env = bundlerEnv {
    name = "jekyll_env";
    inherit ruby;
    gemdir = ./.;
  };
in stdenv.mkDerivation {
  name = "jekyll_site";
  buildInputs = [
    jekyll_env
    bundler
    ruby
  ];
  shellHook = ''
    exec ${jekyll_env}/bin/jekyll serve --watch
  '';
}
