carbon-c-relay fpm-coockery recipe
======

This [fpm-cookery](https://github.com/bernd/fpm-cookery) recipe:
* builds [carbon-c-relay](https://github.com/grobian/carbon-c-relay) 
* adds default configuration to `/etc/carbon-c-relay/relay.conf` 
* creates logging dir `/var/log/carbon-c-relay`
* adds simple systemd unit file to `/usr/lib/systemd/system` which uses configuration from default configuration path and logs to log dir
