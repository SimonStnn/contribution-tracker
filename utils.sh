function format_message() {
    local message="$1"
    local repo="$2"
    echo "| $repo | $message |"
}

function default_table {
    echo "| Repo | Message"
    echo "| ---- | -------"
}

function new_day() {
    local date=$(date +"%d/%m/%Y")
    echo ""
    echo "## $date"
    echo ""
    default_table
}
