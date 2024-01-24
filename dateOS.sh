#!/bin/bash
# Program kt. vypise date (dd.mm.rr) a OS version

echo "Current Date: $(date '+%d.%m.%y')"
echo "OS version $(cat /etc/centos-release)"
