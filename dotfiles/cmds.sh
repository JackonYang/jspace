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

# alias flame_graph="bash $project_dir/plugins/flame_graph.sh"
