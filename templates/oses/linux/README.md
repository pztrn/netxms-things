# Linux OS extended monitoring template

This directory contains extended template which can be used to monitor Linux host.

## A warning about Generic UNIX template

Generic UNIX template will be created on every netxmsd restart and will auto-attach to everything that is not Windows and some metrics will be duplicated. If it isn't okay for you - edit Generic UNIX template properties and disable "Apply this template automatically to nodes selected by filter".

## Instance discovery

Do not forget to issue Instance Discovery poll to populate all metrics.
