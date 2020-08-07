#!/usr/bin/env bash
cd Client
echo "Generating patches..."
git format-patch --zero-commit --full-index --no-signature --no-stat -N -o ../Patches mc
echo "Generated patches."
