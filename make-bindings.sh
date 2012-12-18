#!/usr/bin/sh

swig -cffi -c++ -includeall -importall -ignoremissing -Isrc/ bullet.i
