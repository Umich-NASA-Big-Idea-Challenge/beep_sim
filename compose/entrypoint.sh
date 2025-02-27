#!/bin/sh
set -e


mkdir -p ~/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts 2>/dev/null
echo "Added GitHub to known hosts."

echo "Testing Connection to Github"
ssh -T git@github.com || true

echo "Checking for needed repos"
# Clone the repo inside the mounted volume if not already present
if [ ! -d "$HOME/gazebo_beep/.git" ]; then
    echo "Cloning repository."
    git clone git@github.com:Umich-NASA-Big-Idea-Challenge/gazebo_beep.git ~/gazebo_beep || true
    else
    echo "Gazebo Beep already exists at $HOME. Skipping clone."
fi

if [ ! -d "$HOME/test_ws/.git" ]; then
    echo "Cloning repository."
    git clone git@github.com:Umich-NASA-Big-Idea-Challenge/test_ws.git ~/test_ws || true
    else
    echo "Test WS already exists at $HOME. Skipping clone."
fi

echo "g-ros is ready"

exec "$@"
