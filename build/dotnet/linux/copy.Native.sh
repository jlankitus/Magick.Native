#!/bin/bash
set -e

echo "" > foo.cxx

copyNative() {
    local quantum=$1
    local target=$2

    cp $quantum/libMagick.NET-$quantum-x64.Native.dll.so $target
}

copyNative "Q8" $1
copyNative "Q16" $1
copyNative "Q16-HDRI" $1