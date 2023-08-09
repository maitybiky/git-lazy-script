if [ $# -lt 3 ]; then
  echo "Usage: gitrun.sh <commit_message> <brach_name> <file(s)>"
  exit 1
fi
arg3=$3

#cccc
commit_message="$1"  
branch_name="$2"
shift 2


# Loop through the remaining arguments and add them

for file in "$@"; do
  git add "$file"
done
echo -e "\n\033[35m\033[0;42mFiles Changes Tracked!\033[0m"
git commit -m "$commit_message"
echo -e "\n\033[35m\033[0;42mChanges Commited!\033[0m"

. gpm.sh "$branch_name"
