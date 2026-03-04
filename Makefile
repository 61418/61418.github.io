.PHONY: dev prod

dev:
	@echo "Starting Hugo in development mode (Google Analytics disabled)"
	HUGO_ENVIRONMENT=development HUGO_ENV=development hugo server --environment development

prod:
	@echo "Starting Hugo in production mode (Google Analytics enabled)"
	HUGO_ENVIRONMENT=production HUGO_ENV=production hugo server --environment production
