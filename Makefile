.PHONY: all configure redbean dev prod

all:
	@echo "Tasks:"
	@echo "  configure - sets the workspace up"
	@echo "  redbean - builds redbean executable"
	@echo "  dev - runs redbean in development mode"
	@echo "  prod - runs redbean in production mode"

configure:
	@./configure

redbean.com:
	@$(MAKE) configure

redbean: redbean.com
	@zip redbean.com *.html

dev: redbean
	@bin/run-dev

prod: redbean
	@bin/run-prod
