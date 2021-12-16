# Place this file at C:\Users\.config\powershell\
# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gcm gkm -force
rename-item alias:\gl gll -force
rename-item alias:\gsn gsnn -force
rename-item alias:\gm gmm -force
rename-item alias:\gp gpp -force
rename-item alias:\ni nii -force

# Aliase
# Git
Set-Alias g 'git'

function git-add { git add }
Set-Alias ga git-add
function git-add-all { git add -A }
Set-Alias gaa git-add-all

function git-branch { git branch $args }
Set-Alias gb git-branch

function git-commit { git commit $args }
Set-Alias gc git-commit
function git-commit-message { git commit -m $args }
Set-Alias gcm git-commit-message
function git-checkout { git checkout $args }
Set-Alias gch git-checkout
function git-checkout-master { git checkout $(git_main_branch) $args }
Set-Alias gchm git-checkout-master

function git-diff { git diff $args }
Set-Alias gd git-diff
function git-diff-cached { git diff --cached }
Set-Alias gdc git-diff-cached
function git-diff-master { git diff $(git_main_branch) }
Set-Alias gdm git-diff-master
function git-diff-dev { git diff dev }
Set-Alias gdd git-diff-dev

function git-fetch { git fetch }
Set-Alias gf git-fetch
function git-fetch-origin { git fetch origin }
Set-Alias gfo git-fetch-origin

function git-log { git log }
Set-Alias gl git-log
function git-log-graph { git log --graph }
Set-Alias glg git-log-graph

function git-push { git push $args }
Set-Alias gp git-push
function git-push-origin { git push origin $args }
Set-Alias gpo git-push-origin
function git-push-origin-master { git push -u origin $(git_main_branch) $args }
Set-Alias gpom git-push-origin-master
function git-pull { git pull $args }
Set-Alias gpl git-pull

function git-status { git status }
Set-Alias gs git-status

# NPM
Set-Alias n 'npm'

function npm-install { npm i $args }
Set-Alias ni npm-install
function npm-install-dev { npm i -D $args }
Set-Alias nid npm-install-dev

function npm-run { npm run $args }
Set-Alias nr npm-run

function npm-update { npm update }
Set-Alias nu npm-update
function npm-update-dev { npm update --save/--save-dev }
Set-Alias nud npm-update-dev
