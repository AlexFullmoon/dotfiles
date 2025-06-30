# eza for ls
if [ "$(command -v eza)" ]
    alias ll='eza -l --icons=auto --group-directories-first'
    alias l.='eza -d .*'
    alias ls='eza'
    alias l1='eza -1'
end

# ripgrep for grep
if [ "$(command -v rg)" ]
    alias grep='rg'
    alias egrep='rg -E'
    alias fgrep='rg -F'
    alias xzgrep='rg -z'
    alias xzegrep='rg -zE'
    alias xzfgrep='rg -zF'
end

function mkdir
    command mkdir -p $argv
end

if status is-interactive
    [ "$(command -v starship)" ] && eval "$(starship init fish)"
    [ "$(command -v atuin)" ] && eval "$(atuin init fish)"
    [ "$(command -v zoxide)" ] && eval "$(zoxide init fish)"
end
