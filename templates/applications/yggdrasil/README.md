# Yggdrasil monitoring things

This directory contains everything you need to monitor status of your Yggdrasil
node.

## Helper scripts

There are two helper scripts that should be placed somewhere. Don't forget about
`+x`!

* yggdrasil_peers.sh - returns number of connected peers.
* yggdrasil_traffic.sh - returns traffic calculation. Accepts `incoming` or `outgoing`
as first parameter.

Both scripts use `yggdrasilctl` binary and parse it's output.

## Configure nxagent

Add this to `/etc/nxagentd.conf`:

```
ExternalParameterShellExec=Yggdrasil.GetBytesReceived():/usr/local/bin/yggdrasil_traffic.sh incoming
ExternalParameterShellExec=Yggdrasil.GetBytesSent():usr/local/bin/yggdrasil_traffic.sh outgoing
ExternalParameterShellExec=Yggdrasil.GetConnectedPeersCount():/usr/local/bin/yggdrasil_peers.sh
```

**Don't forget to restart NetXMS agent!**
