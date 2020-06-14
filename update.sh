#!/bin/bash

[[ -d projetos ]] && rm -rf projetos

mkdir projetos
cd projetos

repos="ccr-wppui ccr-service ccr-webui"

for repo in $repos; do
    git clone https://github.com/alanfortlink/$repo.git
done

for repo in $repos; do
    rm -rf projetos/$repo/.git
    echo "rm -rf projetos/$repo/.git"
done

cd ..
git add projetos
git commit -m "Atualizado em $(date)"
git push
