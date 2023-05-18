# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

if [ "$(id -u)" -eq 0 ]; then
  PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
else
  PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games"
fi
export PATH

if [ "${PS1-}" ]; then
  if [ "${BASH-}" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1='\h:\w\$ '
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "$(id -u)" -eq 0 ]; then
      PS1='# '
    else
      PS1='$ '
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
export XDG_RUNTIME_DIR=/run/user/$(id -u)
run-parts /etc/dynamic-motd.d/
if test -f ~/pass; then
	printf "You have not removed the password file from your home directory. Save the password locally and remove it from the pubnix with rm -rf ~/pass as soon as possible.\n"
fi
if [ $(diff /etc/skel/meta-info.toml ~/meta-info.toml | wc -l) -eq "6" ] && $(! test -f ~/.meta-info-nowarn); then
	printf 'Consider editing your meta-info.toml. You can supress this warning by running `touch ~/.meta-info-nowarn`\n'
fi
