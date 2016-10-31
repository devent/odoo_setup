# Odoo 9

Installs the Odoo 9 ERP software locally using the Docker 
image [Odoo 9.0](https://hub.docker.com/_/odoo/).

# Consul

* Get all registered services.

```
# Where,
# 10.0.0.6 is the Consul IP address.
# 8500 is the Consul HTTP port.
curl 10.0.0.6:8500/v1/catalog/services
```
