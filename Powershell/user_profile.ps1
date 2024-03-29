# Prompt
Import-Module posh-git
Import-Module oh-my-posh
Set-PoshPrompt powerlevel10k

# Remove Defaults
rename-item alias:\gc gk -force
rename-item alias:\gcm gkm -force
rename-item alias:\gl gll -force
rename-item alias:\gsn gsnn -force
rename-item alias:\gm gmm -force
rename-item alias:\gp gpp -force
rename-item alias:\ni nii -force

# Import
. $PSScriptRoot\utils.ps1


# Aliases
# Git
function g {
    git $args
}

function ga {
    git add
}
function gaa {
    git add -A
}

function gb {
    git branch $args
}
function gbd {
    git branch -D $args
}

function gc {
    git commit $args
}
function gcm {
    git commit -m $args
}
function gch {
    git checkout $args
}
function gchb {
    git checkout -b $args
}
function gchm {
    $branch = git_main_branch
    git checkout $branch $args
}

function gd {
    git diff $args
}
function gdc {
    git diff --cached
}
function gdm {
    $branch = git_main_branch
    git diff $branch
}

function gdd {
    git diff dev 
}

function gf {
    git fetch
}
function gfo {
    git fetch origin
}

function gl {
    git log
}
function glg {
    git log --graph
}

function gm {
    git merge $args
}
function gms {
    git merge --squash $args
}
function gmnf {
    git merge --no-ff $args
}

function gp {
    git push $args
}
function gpo {
    git push origin $args
}
function gpoc {
    $branch = git_current_branch
    git push -u origin $branch
}
function gpom {
    $branch = git_main_branch
    git push -u origin $branch $args
}
function gpl {
    git pull $args
}
function gplc {
    $branch = git_current_branch
    git pull origin $branch
}
function gplo {
    git pull origin $args
}

function gs {
    git status
}
function gst {
    git stash $args
}
function gstp {
    git stash pop
}

# NPM
# I don't know why but npm $args doesn't work on string with spaces
Set-Alias n npm

function ni {
    npm i $args
}
function nid {
    npm i -D $args
}

function nr {
    npm run $args
}

function nu {
    npm update
}
function nud {
    npm update --save/--save-dev
}

# Yarn
Set-Alias y Yarn

function ya {
    yarn add $args
}
function yad {
    yarn add -D $args
}

function yci {
    yarn install --frozen-lockfile
}

function yr {
    yarn run
}
function yrv {
    yarn remove
}

function yu {
    yarn upgrade
}