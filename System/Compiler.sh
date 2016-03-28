#!/bin/bash
valac --library=String -H String.h String.vala -X -fPIC -X -shared -o String.so
