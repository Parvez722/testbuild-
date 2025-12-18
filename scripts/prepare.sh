#!/bin/bash
set -e

echo "==> Copying E8820S DTS"
cp ../dts/mt7621_zte_e8820s.dts \
   target/linux/ramips/dts/

echo "==> Applying E8820S patches"
for p in ../patches/*.patch; do
  echo "Applying $p"
  patch -p1 < "$p"
done

echo "==> Prepare done"
