SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
cmd_path=$(realpath $SCRIPT_DIR/../dotfiles/cmds.sh)

echo "add below to your .bashrc or .zshrc:"
echo "source ${cmd_path}"
