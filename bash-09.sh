cat << EOF > /tmp/get.sh
#!/usr/bin/env bash
set -euo pipefail
(pgrep sshd &> /dev/null && echo OK || echo ERR) > /tmp/output.txt
EOF