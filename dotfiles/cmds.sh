SCRIPT_DIR=$(cd $(dirname "$0") && pwd)
CURRENT_FILE=$SCRIPT_DIR/$(basename "$0")

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
