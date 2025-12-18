#!/bin/bash
set -e
cp ../dts/mt7621_zte_e8820s.dts target/linux/ramips/dts/
for p in ../patches/*.patch; do
  patch -p1 < "$p"
done
