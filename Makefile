install: $(HOME)/.config/openai-kiss/authorization.header
	@install -D ask $(HOME)/.local/bin/ask
	@install -D ask.json $(HOME)/.config/openai-kiss/ask.json
	@install -D hear $(HOME)/.local/bin/hear
	@install -D hear.conf $(HOME)/.config/openai-kiss/hear.conf
	@install -d $(HOME)/.cache/openai-kiss

$(HOME)/.config/openai-kiss/authorization.header:
	@mkdir -p $(@D)
	@read -p "API key: " key && umask u=rw,g=,o= && echo "Authorization: Bearer $$key" > $@
