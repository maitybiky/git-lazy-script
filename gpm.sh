#!/bin/bash

# Function to display a spinner
spinner() {
  local pid="$1"  # Accept pid as an argument
  local delay=0.1
  local spinstr='|/-\'
  while ps -p "$pid" >/dev/null; do
    local temp=${spinstr#?}
    printf " [%c]  " "$spinstr"
    local spinstr=$temp${spinstr%"$temp"}
    sleep $delay
    printf "\b\b\b\b\b\b"
  done
  printf "    \b\b\b\b"
}

echo -e "\n\033[0;35mPushing changes... to main\033[0m\n"
git push -u origin main &

pid=$!

spinner "$pid"
echo ""
RED='\033[0;31m'  
GREEN='\033[0;32m'
NC='\033[0m'   
if wait $pid; then

echo -e "\n\033[35m\033[0;42mChanges Tracked Commited and Pushed!\033[0m"

else
  echo -e "${RED}Push failed!${NC}"
fi



