
# Makefile for project

# Target to download the latest Flesh and Blood card rules and glossary
download-rules:
	@mkdir -p docs/rules .tmp
	@curl -o docs/rules/en-fab-cr.txt https://rules.fabtcg.com/txt/latest/en-fab-cr.txt
	@echo "Rules file downloaded successfully to docs/rules/en-fab-cr.txt"
	@curl -s https://rules.fabtcg.com/en/cr/glossary/ > .tmp/glossary.html && python -m html2text .tmp/glossary.html | awk '/# Glossary/{found=1} found' > docs/rules/glossary.txt && rm -f .tmp/glossary.html
	@echo "Glossary extracted successfully to docs/rules/glossary.txt"

# Alias for download-rules
rules: download-rules

.PHONY: download-rules rules
