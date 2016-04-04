#!/bin/bash
#valadoc --vapidir="/home/consola/Documentos/farmaenlace/Operadores/Edwin/Desarrollo/ProyectosSoftware/vapi_intern/" *.vala  --pkg gee-1.0 --pkg libpq -X -lpq --basedir="/" --force -o libspire_pg
find . -name *.vala -type f -print | xargs valadoc  --pkg gee-1.0   --force -o VSharp
read
