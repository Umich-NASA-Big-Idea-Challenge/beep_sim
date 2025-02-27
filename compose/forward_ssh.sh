#!/bin/bash
echo "restarting SSH Agent"
ssh-agent -k


echo "Starting SSH Agent"
eval "$(ssh-agent -s)"
ssh-add -L

echo "adding keys"
# Add all private SSH keys in ~/.ssh
ssh-add ~/.ssh/id_* 2>/dev/null

echo $SSH_AUTH_SOCK
ls -l $SSH_AUTH_SOCK

echo "All available SSH keys have been added."
