# git-lazy-script
track canges in your project directory then  commit chages and pushed to main branch in a single command.

## Features
```bash
gitrun.sh <1st arg>  <2nd arg>
```

execute step by step
- git add  <2nd arg>
- git commit -m  <1st arg>
- git push -u origin main




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
  chmod +x gpm.sh gitrun.sh 
```
## Command

```bash
gitrun.sh <commit_message> <filesname for tracking or "." for all files>
```

## Demo

```bash
gitrun.sh "remove all console.log()" .
```
