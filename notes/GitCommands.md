# Git Commands

## Adding personal token to local git

```bash
# github -> settings -> Developer Options -> Personal Access Tokens -> repo

git config --global user.name "<username>"
git config --global user.email "<email>"

git config --global credential.helper cache
# do one more push so it remembers credentials for next time
```

## Using ssh keys to authenticate

```bash
# list urls
git remote -v

git remote set-url origin git@github.com:ropapermaker/<repo-name>.git
```

## Initializing Repository and Pushing to Github

```bash
# initialize repo
git init

# stage changes
git add .

# commit with message
git commit -m "message"

# rename branch to 'main'
git branch -M main

# add remote repo with name 'origin'
git remote add origin https://github.com...

# push changes of 'main' branch to 'origin' remote repo, '-u' is to remember default 'git push' action
git push -u origin main
```

## Staging and Committing

```bash
# '-am' stages changes and adds message
git commit -am "message"

# stage all changes only on tracked files
git add -u
```

## Unstage Changes

```bash
# all files
git rm --cached <file>
# all files
git rm --cached .
```

## Status of Changes

```bash
git status
```

## Cloning Remote Repository to Local

```bash
git clone https://github.com....git
```

## Check Current Branch Name And List Branches

```bash
# list current branch and other branch names
git branch
```

## Check Remote Repositories

```bash
# list remote repositories linked to local
git remote
```

## Create New Branch

```bash
# create new branch named 'extended'
git checkout -b extended
```

## Change Branch

```bash
# change to branch named 'extended'
git checkout extended
```

## Push New Branch

```bash
# push 'extended' branch to 'origin' remote
git push origin exteded
```

## Merging Branches

```bash
# merging 'extended' branch to 'main' 
# if merging fails, make needed changes to where the merging fails
git checkout main
git merge extended
```

## If 2 or More People Are Working On The Same Project

```bash
git commit -am "message"
git pull
# resolve any conflicts first

git push
```
