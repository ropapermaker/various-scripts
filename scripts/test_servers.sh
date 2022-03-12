#!/bin/bash

# TODO(check single server access)
# LINK="user@host1"

touch server_results

NO_LINES=$(sed -n '=' server_list | wc -l)
COUNT=1
# echo $NO_LINES

# clear results
> server_results

# -q for quiet mode = no verbose
for line in $(cat ./server_list); do
    echo "Checking Server $COUNT/$NO_LINES"
    user="$(echo $line | cut -d@ -f1)"
    host="$(echo $line | cut -d@ -f2)"

    # check connection by ssh-ing into a server,
    # executing a command and returning a message
    # if the connection was successful of not
    ssh -q -o BatchMode=yes -o ConnectTimeout=5 ${user}@${host} "echo 2>&1" \
    && CURR_SERVER="$user@$host ok" && echo -e "\e[1;32m$CURR_SERVER\e[0m" \
    || CURR_SERVER="$user@$host not ok" && echo -e "\e[1;31m$CURR_SERVER\e[0m"
    
    echo ""
    # save server access in 'server_results' 
    echo $CURR_SERVER >> server_results
    COUNT=$((COUNT+1))
done