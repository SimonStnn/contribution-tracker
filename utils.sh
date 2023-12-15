function format_message(){
    local message="$1"
    local date=$(date +"%Y-%m-%d %H:%M:%S")
    echo "| $message | $date |"
}

function default_table {
    echo "| Message | Date |"
    echo "| ------- | ---- |"
}

function new_day(){
    local date=$(date +"%d/%m/%Y")
    echo ""
    echo "## $date"
    echo ""
    default_table
}