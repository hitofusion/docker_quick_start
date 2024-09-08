#!/bin/bash

# Directorio donde se clonarán los repositorios
DEST_DIR="$HOME/repos"

# Crea el directorio de destino si no existe
#mkdir -p "$DEST_DIR"

# Lista de repositorios a clonar
REPOS=(

    "git@github.com:ingadhoc/odoo-argentina-ce.git"
	"git@github.com:OCA/stock-logistics-warehouse.git"
	"git@github.com:odoo/design-themes.git"
	"git@github.com:OCA/server-tools.git"
	"git@github.com:ingadhoc/product.git"
	"git@github.com:OCA/sale-reporting.git"
	"git@github.com:OCA/web.git"
	"git@github.com:ingadhoc/stock.git"
	"git@github.com:OCA/stock-logistics-workflow.git"
    "git@github.com:OCA/reporting-engine.git"
)

# Clonando cada repositorio
for REPO in "${REPOS[@]}"; do
    git clone --branch 17.0 --single-branch "$REPO" 
done

echo "Clonación completada."