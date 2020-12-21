# MySQL generic metrics

This directory contains a very comprehensive template which will monitor generic MySQL/MariaDB metrics. All available parameters are set.

## Prerequisites

You should have nxagent [configured to use one or more MySQL/MariaDB databases](https://www.netxms.org/documentation/adminguide/database-monitoring.html#mysql).

## Thresholds

This templates uses some defaults thresholds:

* Connection pool usage: (2) >= 90%
* Maximum connection pool usage: (2) >= 90%
* Open file pool usage: (2) >= 90%
* Temporary tables created on disk: (2) >= 50%
