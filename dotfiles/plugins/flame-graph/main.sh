# usage: flame-graph <perf-data-file>
SCRIPT_PATH=${BASH_SOURCE[0]:-$0}
SCRIPT_DIR=$(cd $(dirname "$SCRIPT_PATH") && pwd)
flamegraph_path=$SCRIPT_DIR/FlameGraph

perf_data_file=$(realpath $1)
perf_data_dir=$(dirname $perf_data_file)
out_filename=cpu-clock.svg
out_file=$perf_data_dir/$out_filename
graph_title='CPU-clock Flame Graph'

pushd $flamegraph_path > /dev/null

sudo perf script -i ${perf_data_file} \
    | ./stackcollapse-perf.pl \
    | ./flamegraph.pl --title="$graph_title" \
    > $out_file

popd > /dev/null

echo "frame graph file output: $out_filename"
