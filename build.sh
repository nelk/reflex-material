#! /usr/bin/env nix-shell
#! nix-shell -i bash tools.nix

set -e

nix-build mdc.nix -A package -o material-design-components
export NODE_MODULES=./material-design-components/lib/node_modules/reflex-material/node_modules

mkdir -p _shake
ghc --make Build.hs -rtsopts -with-rtsopts=-I0 -outputdir=_shake -o _shake/build && _shake/build "$@"
