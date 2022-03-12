#!/bin/bash

NO_LINES=$(sed -n '=' server_list | wc -l)
COUNT=1

string=$(for f in *.pub; do cat $f; echo; done | tr '\n' '; ')

for line in $(cat ./server_list); do
    echo "Checking Server $COUNT/$NO_LINES"
    user="$(echo $line | cut -d@ -f1)"
    host="$(echo $line | cut -d@ -f2)"

    # ClusterFu*k
    ssh -o BatchMode=yes -o ConnectTimeout=5 -o StrictHostKeyChecking=no ${user}@${host} -T\
    "IFS=';' read -r -a KEYS <<< "\""$string"\""; for key in \"\${KEYS[@]}\"; do
    if [ ! -z \"\$key\" ]; then
        grep -F \"\$key\" ~/.ssh/authorized_keys 2>/dev/null || \
        (printf \"%s\n\" "\"\$key\"" >> ~/.ssh/authorized_keys)
    fi

    done" || \
    echo "No access or connection timed out"

    echo ""
    COUNT=$((COUNT+1))
done

# for key in "${KEYS[@]}"; do echo "$key hehe"; done