# Odoo 9

Installs the Odoo 9 ERP software locally using the Docker 
image [Odoo 9.0](https://hub.docker.com/_/odoo/).

# Quick Start

The default goal of the `Makefile` file will start Odoo 9 and all necessary
dependencies. After success, Odoo 9 will be available at the IP address
the `info-ip-container` goal prints. For example, on my computer it is
`http://172.17.0.6`.

The default goal will start the following dependencies:

* Consul;
* Registrator;
* PostgreSQL, with `/opt/postgresql-9.4`;
* Odoo 9, with `/opt/odoo9`;
* Nginx Proxy, with `/opt/nginx_odoo9`;

```
make
make info-ip-container NAME=nginx-odoo-9-1-80
```

# Consul

* Get all registered services.

```
# Where,
# 8500 is the Consul HTTP port.
curl localhost:8500/v1/catalog/services
```
