if [ $# -lt 2 ]; then
  echo "Usage: $0 <commit_message> <file(s)>"
  exit 1
fi

commit_message="$1"  # First argument is the commit message
shift  

# Loop through the remaining arguments and add them

for file in "$@"; do
  git add "$file"
done
echo -e "\n\033[35m\033[0;42mFiles Changes Tracked!\033[0m"
git commit -m "$commit_message"
echo -e "\n\033[35m\033[0;42mChanges Commited!\033[0m"

. gpm.sh

