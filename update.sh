#!/bin/bash

[[ -d projetos ]] && rm -rf projetos

mkdir projetos
cd projetos

git clone https://github.com/alanfortlink/ccr-wppui.git
git clone https://github.com/alanfortlink/ccr-service.git
git clone https://github.com/alanfortlink/ccr-webui.git

cd ..
git add projetos
git commit -m "Atualizado em $(date)"
git push
