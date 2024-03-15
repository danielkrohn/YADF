#!/bin/bash

defang_url() {
    local url="$1"  # The URL to defang
    # Replace dots with [.] and slashes with [/]
    # Add more replacements as needed
    local defanged_url=$(echo "$url" | sed 's/\./[.]/g' | sed 's/\//[\/]/g')
    echo "$defanged_url"
}

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

input_url="$1"
defanged_url=$(defang_url "$input_url")
echo "Defanged URL: $defanged_url"
