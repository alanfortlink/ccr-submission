#!/bin/bash

[[ -d projetos ]] && rm -rf projetos

mkdir projetos
cd projetos

repos="ccr-wppui ccr-service ccr-webui"

for repo in $repos; do
    git clone https://github.com/alanfortlink/$repo.git && rm -rf $repo/.git
done

cd ..
git add projetos
git commit -m "Atualizado em $(date)"
git push
