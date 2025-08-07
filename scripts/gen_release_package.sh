#!/bin/bash
set -e

OUTPUT_DIR="release_pkg"
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

echo "Copying kernel patches..."
mkdir -p "$OUTPUT_DIR/kernel"
cp -r kernel/patches "$OUTPUT_DIR/kernel/"
cp kernel/README.kernel.md "$OUTPUT_DIR/kernel/"

echo "Copying u-boot patches..."
mkdir -p "$OUTPUT_DIR/u-boot"
cp -r u-boot/patches "$OUTPUT_DIR/u-boot/"
cp u-boot/README.uboot.md "$OUTPUT_DIR/u-boot/"

echo "Copying LICENSES..."
cp -r LICENSES "$OUTPUT_DIR/"

echo "Copying compliance README..."
cp README.md "$OUTPUT_DIR/README_compliance.md"

echo "Done. Package located at ./${OUTPUT_DIR}"
