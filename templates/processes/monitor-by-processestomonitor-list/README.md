# Monitor processes using custom "ProcessesToMonitor" list

This directory contains everything that is needed to start monitoring your processes quick.

## A warning about regular expressions

Template is using regular expressions instead of binary's name. Keep in mind that your regular expression might capture unneeded data!

## Helper script

Copy script to your server and made it executable with `chmod +x /path/to/script`.

Fix `PROCESSES` array to contain everything you need to monitor (**while keeping in mind a warning about regular expressions above!**)

## Configure nxagent

To export data produced by helper script as list into NetXMS you should add this line into `/etc/nxagentd.conf`:

```
ExternalList=ProcessesToMonitor:/path/to/script.sh
```

**Don't forget to restart NetXMS agent!**

## Poll

Apply template on node(s) and execute "Instance discovery" polling option.
