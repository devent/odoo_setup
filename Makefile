include Makefile.vars
include Makefile.help
include Makefile.functions

.PHONY +: all consul registrator postgresql odoo9 proxy clean info-ip-container

all: consul registrator postgresql odoo9 proxy ##@default Starts Odoo 9 and all necessary dependencies.

consul: ##@targets Starts the Consul container.
	$(MAKE) Makefile.consul run

registrator: ##@targets Starts the Consul Registrator container.
	$(MAKE) Makefile.registrator run

postgresql: ##@targets Starts the PostgreSQL container.
	$(MAKE) Makefile.postgresql run

odoo9: ##@targets Starts the Odoo 9 container.
	$(MAKE) Makefile.odoo9 run

proxy: ##@targets Starts the HTTP proxy container for Odoo.
	$(MAKE) Makefile.nginx run

clean:
	$(MAKE) -f Makefile.odoo9 clean
	$(MAKE) -f Makefile.postgresql clean
	$(MAKE) -f Makefile.registrator clean
	$(MAKE) -f Makefile.consul clean

info-ip-container: ##@targets Retrieves the DNS record for the container.
	$(call check_defined, NAME, The container name to lookup)
	dig @localhost $(NAME).$(dns_search)
