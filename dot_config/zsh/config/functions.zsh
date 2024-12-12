##
# `cd` into the last directory upon exit.
##
function lf() {
  command lf -last-dir-path="$HOME/.local/share/lf/lastdir" "$@" \
    && cd "$(<$HOME/.local/share/lf/lastdir)" 2>/dev/null
}

##
# Generate authentication keys for SSH.
##
function gen-ssh-keygen-ed25519() {
  ssh-keygen -t ed25519 -o -a 100 -f ~/.ssh/keys/$1 -C "$2"
}

##
# Function for yazi
# https://yazi-rs.github.io/docs/quick-start
##
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

##
# Use for switch AWS profiles within config/credentials
##
sp () {
    SP_ARG=$1
    if [ -n "$SP_ARG" ]; then
        CHECK_PROFILE=`grep "\[$SP_ARG\]" ~/.aws/credentials`
        CHECK_PROFILE2=`grep "\[profile $SP_ARG\]" ~/.aws/config`
        if [ -n "$CHECK_PROFILE" ] || [ -n "$CHECK_PROFILE2" ]; then
            echo "Setting AWS profile to $SP_ARG"
            export AWS_PROFILE=$SP_ARG
        else
            echo "AWS profile $1 does not exist"
        fi
    else
        echo "Setting AWS profile to NULL"
        unset AWS_PROFILE
    fi
}
##

