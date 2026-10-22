FILENAME = c2-notes

all: compile view

help: ## Comando de ayuda
	@echo ""
	@echo "Comando                           Explicación"
	@echo "-------                           -----------"
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z0-9_-]+:.*##/ {printf "\033[38;5;161mmake %-27s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)	
	@echo ""

compile: ## Compila los archivos fuente
	@echo "[+] Compilando..."
	@typst c $(FILENAME).typ
	@echo "[+] Documento compilado!"

view: ## Abre el archivo PDF con el visor Zathura
	@echo "[+] Mostrando archivo..."
	@zathura $(FILENAME).pdf
