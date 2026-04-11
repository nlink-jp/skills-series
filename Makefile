DEST ?= $(HOME)/.claude/skills
SKILLS := $(shell find . -mindepth 2 -maxdepth 2 -name 'SKILL.md' -exec dirname {} \; | xargs -I{} basename {})

.PHONY: install uninstall list

install:
	@for skill in $(SKILLS); do \
		mkdir -p "$(DEST)/$$skill"; \
		cp -R "$$skill/." "$(DEST)/$$skill/"; \
		echo "installed: $$skill -> $(DEST)/$$skill"; \
	done

uninstall:
	@for skill in $(SKILLS); do \
		rm -rf "$(DEST)/$$skill"; \
		echo "removed: $(DEST)/$$skill"; \
	done

list:
	@for skill in $(SKILLS); do \
		echo "$$skill"; \
	done
