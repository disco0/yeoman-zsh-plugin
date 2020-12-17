# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# According to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"

typeset -xg __YEOMAN_PLUGIN_DIR="${0:h}"
. "$__YEOMAN_PLUGIN_DIR"/helpers_yo

# Get the list of global generator and store it in a file
(__yo_setGlobalGenerators &)

# @TODO Wrap these in configuration guards instead of removing
if [[ -v __YEOMAN_PLUGIN_LOAD_ALIASES ]]
then
    alias ymget='npm install -g yo grunt-cli bower'

    alias ym='yo help'
    alias ymv='yo --version'

    alias ymi='yo'
    alias ymb='grunt build'
    alias ymsv='grunt server'
    alias ymsd='grunt server:dist'
    alias ymst='grunt server:test'
    alias ymt='grunt test'
    alias ymii='bower install'
    alias ymui='bower uninstall'
    alias ymu='bower update'
    alias yml='bower list'
    alias yms='bower search'
    alias ymlu='bower lookup'

    # new alias for Yoeman >=1.0 (using 'grunt' and 'bower')
    alias grb='grunt build'
    alias grsv='grunt server'
    alias grsd='grunt server:dist'
    alias grst='grunt server:test'
    alias grt='grunt test'

    alias bwii='bower install'
    alias bwui='bower uninstall'
    alias bwu='bower update'
    alias bwl='bower list'
    alias bws='bower search'
    alias bwlu='bower lookup'
fi