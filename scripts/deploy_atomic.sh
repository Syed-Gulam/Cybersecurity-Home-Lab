#!/bin/bash
# Example deploy script to fetch Atomic Red Team techniques and show how to run them.
# This script should be run on a Linux attacker/mgmt host (e.g., Kali).
set -e
if [ ! -d atomic-red-team ]; then
  git clone https://github.com/redcanaryco/atomic-red-team.git
fi
echo "Atomic Red Team cloned into ./atomic-red-team"
echo "Follow the technique README files under atomic-red-team/atomics to run specific tests."
