SCRIPT_PATH=${BASH_SOURCE[0]:-$0}
SCRIPT_DIR=$(cd $(dirname "$SCRIPT_PATH") && pwd)
CURRENT_FILE=$SCRIPT_DIR/$(basename "$SCRIPT_PATH")

function reload() {
	source $CURRENT_FILE
	echo "reloaded $CURRENT_FILE"
}

function j () {
	func_name=$1
	# call function with all arguments except the 1st
	$func_name "${@: 2}"
}

# usage: flame-graph <perf-data-file>
alias flame-graph="bash $SCRIPT_DIR/plugins/flame-graph/main.sh"

alias install-py3-env="pip3 install -r $SCRIPT_DIR/plugins/python-env/requirements-py3.txt"

alias start-jupyter="bash $SCRIPT_DIR/plugins/jupyter-server/start_jupyter_server.sh"
