if status is-interactive
 set -g fish_greeting

if status is-interactive
    starship init fish | source
end


# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1a  --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree
alias fuck='sudo zypper update'
# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'   # Commands to run in interactive sessions can go here
end

function fish_prompt
                                set_color green -o
                                date "+%m/%d/%y"
                                set_color purple  -or
                                echo (pwd) ':☛' (set_color normal)
                        end
