#!/usr/bin/with-contenv bashio
CONFIG_PATH=/data/options.json
log_folder="$(bashio::config 'log_folder')"
ln -s $log_folder /var/log/rsyslog
exec rsyslogd -n