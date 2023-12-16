function format_message(){
    local message="$1"
    local repo="$2"
    local date=$(date +"%Y-%m-%d %H:%M:%S")
    echo "| $repo | $message | $date |"
}

function default_table {
    echo "| Repo | Message | Date |"
    echo "| ---- | ------- | ---- |"
}

function new_day(){
    local date=$(date +"%d/%m/%Y")
    echo ""
    echo "## $date"
    echo ""
    default_table
}