if status is-interactive
    # Commands to run in interactive sessions can go here
end
alias pls=sudo
alias pswrd="cat ~/Sync/Common/file.txt"
starship init fish | source
set PATH $PATH:/home/djamal/.cargo/bin
thefuck --alias | source
export LANG=en_US.UTF-8
export LC_CTYPE="ru_RU.UTF-8"
set PATH $( python -c "
import os
path = os.environ['PATH'].split(':')
print(':'.join(sorted(set(path), key=path.index)))
" )
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
