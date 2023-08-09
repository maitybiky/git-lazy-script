# git-lazy-script
track canges in your project directory then  commit chages and pushed to main branch in a single command.

## Command
```bash
gitrun.sh <commit_message> <branch_name>  <files_to_track>
```

execute step by step
- git add  <files_to_track>
- git commit -m  <commit_message>
- git push -u origin <branch_name>




## Run Locally

Clone the project

```bash
  git clone git@github.com:maitybiky/git_push_shell_script.git
```

Go to the project directory

```bash
  cd git-lazy-script
```
copy files to /usr/local/bin

```bash
  cp gpm.sh gitrun.sh /usr/local/bin
```

Go to the bin directory

```bash
  cd /usr/local/bin
```

make those file executable

```bash
  sudo chmod +x gpm.sh gitrun.sh 
```
```bash
  source _gitrun
```

## Demo

```bash
gitrun.sh "remove all console.log() in all files" main .
```
