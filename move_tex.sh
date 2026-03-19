#!/bin/bash

mkdir -p latex

find . -type f -name "*.tex" -exec mv -n {} latex/ \;