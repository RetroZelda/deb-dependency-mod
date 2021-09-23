DESTINATION_DIR = /usr/local/bin
SCRIPT_FILE = deb-dependency-mod
DESTINATION_FILE = $(DESTINATION_DIR)/$(SCRIPT_FILE)

.PHONY: install uninstall

install: uninstall
	@cp -f $(SCRIPT_FILE) $(DESTINATION_FILE)
	@hash -r

uninstall:
	@rm -f $(DESTINATION_FILE)
	@hash -r

