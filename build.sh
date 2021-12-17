#!/bin/bash

#build the js files
node_modules/typescript/bin/tsc --build

#remove the line that will cause trouble in built js files
find ./src -name '*.js' -exec sed -i "" '/Object.defineProperty(exports, "__esModule", { value: true });/d' {} +