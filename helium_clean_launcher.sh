#!/bin/bash

# Helium Memory-Optimized Launcher
# Aggressive memory savings while preserving full JS performance

HELIUM_BINARY="/Applications/Helium.app/Contents/MacOS/Helium"

"$HELIUM_BINARY" \
    --renderer-process-limit=4 \
    --disable-features=BackForwardCache \
    --enable-features=ReduceMemoryFootprint,PartitionAllocMemoryReclaimer \
    --js-flags=--optimize-for-size \
    "$@"
