#!/bin/sh -ex

cabal clean
mv vte.cabal-renamed vte.cabal || true
mv vtegtk3.cabal vtegtk3.cabal-renamed || true
cabal install "$@"

cabal clean
mv vtegtk3.cabal-renamed vtegtk3.cabal || true
mv vte.cabal vte.cabal-renamed || true
cabal install "$@"

