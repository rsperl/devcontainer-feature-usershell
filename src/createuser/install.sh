#!/bin/sh
set -e

is_debian() {
    if [ -f /etc/debian_version ]; then
        echo 1
    else
        echo 0
    fi
}

add_debian_user() {
    useradd --shell "$USERSHELL" --create-home -u "$USERID" --gid "$GROUPID" "$USERNAME"
}
modify_debian_user() {
    usermod --shell "$USERSHELL" "$USERNAME"
}

# The 'install.sh' entrypoint script is always executed as the root user.
#
# These following environment variables are passed in by the dev container CLI.
# These may be useful in instances where the context of the final
# remoteUser or containerUser is useful.
# For more details, see https://containers.dev/implementors/features#user-env-var
# echo "The effective dev container remoteUser is '$_REMOTE_USER'"
# echo "The effective dev container remoteUser's home directory is '$_REMOTE_USER_HOME'"

# echo "The effective dev container containerUser is '$_CONTAINER_USER'"
# echo "The effective dev container containerUser's home directory is '$_CONTAINER_USER_HOME'"

#####
if [ "$(is_debian)" = "1" ]; then
    modify_debian_user
fi
