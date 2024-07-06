# Makefile to generate README.md

# Variables
README = README.md
SCRIPT = guessinggame.sh

# Default target
all: $(README)

# Target to generate README.md
$(README): $(SCRIPT)
	@echo "# Guessing Game Project" > $(README)
	@echo "" >> $(README)
	@echo "Date and Time: $$(date)" >> $(README)
	@echo "" >> $(README)
	@echo "Number of lines in \`$(SCRIPT)\`: $$(wc -l < $(SCRIPT))" >> $(README)

# Phony targets
.PHONY: all
