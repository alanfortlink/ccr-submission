#!/bin/bash

[[ -d projetos ]] && rm -rf projetos

mkdir projetos
cd projetos

repos="ccr-wppui.git ccr-service.git ccr-webui.git"

for repo in $repos; do
    git clone https://github.com/alanfortlink/$repo
    rm -rf projetos/$repo/.git*
done

cd ..
git add projetos
git commit -m "Atualizado em $(date)"
git push
