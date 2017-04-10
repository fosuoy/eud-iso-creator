#!/bin/bash
set -eux -o pipefail

(
/usr/local/bin/rkhunter --versioncheck
/usr/local/bin/rkhunter --update
/usr/local/bin/rkhunter --cronjob --report-warnings-only
) | /bin/mail -s 'rkhunter Daily Scan Report (PutYourServerNameHere)' root
