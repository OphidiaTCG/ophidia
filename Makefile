
# Makefile for project

# Target to download the latest Flesh and Blood card rules
download-rules:
	@mkdir -p docs/rules
	@curl -o docs/rules/en-fab-cr.txt https://rules.fabtcg.com/txt/latest/en-fab-cr.txt
	@echo "Rules file downloaded successfully to docs/rules/en-fab-cr.txt"

# Alias for download-rules
rules: download-rules

.PHONY: download-rules rules
