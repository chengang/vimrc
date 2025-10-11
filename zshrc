setopt hist_ignore_dups
setopt hist_ignore_space
alias ls="ls -G"
function ff { osascript -e 'tell application "Finder"'\
 -e "if (${1-1} <= (count Finder windows)) then"\
 -e "get POSIX path of (target of window ${1-1} as alias)"\
 -e 'else' -e 'get POSIX path of (desktop as alias)'\
 -e 'end if' -e 'end tell'; };\

function cdff { pushd "`ff $@`"; };
function ackf { ack --cpp --match "\b$1\b\s*\(" --not "^\s*//" --not "\;" };
function ackc { ack --cpp --match "\s*class.+$1\b" --not "^\s*//" };
function ackm { ack --cpp --match "^#\s*define\s+$1\b" --not "^\s*//" };
function findf { find . -iname "$1" };
