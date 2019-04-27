#!/usr/bin/env bash
nix-shell -p bundler -p bundix --run 'bundler update; bundler lock; bundler package --no-install --path vendor; bundix; rm -rf vendor'

echo "shell.nix created"
echo "gemset.nix created"
echo "You should now be able to run nix-shell"
