#!/bin/sh

# Make sure the directory for individual app logs exists
mkdir -p /var/log/shiny-server
chown shiny.shiny /var/log/shiny-server

exec env | grep API | awk '{print "GX_"$1}' >> /etc/R/Renviron
exec env | grep URL | awk '{print "GX_"$1}' >> /etc/R/Renviron
exec env | grep HISTORY_ID | awk '{print "GX_"$1}' >> /etc/R/Renviron

exec shiny-server >> /var/log/shiny-server.log 2>&1
