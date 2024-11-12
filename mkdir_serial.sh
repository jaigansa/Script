#!/bin/bash

check_years() {
    local start_year=$1
    local end_year=$2

    # Check if start_year and end_year are integers
    if ! [[ "$start_year" =~ ^[0-9]+$ ]] || ! [[ "$end_year" =~ ^[0-9]+$ ]]; then
        echo "Error: Both start and end years must be valid integers."
        return 1
    fi

    # Check if start_year is less than or equal to end_year
    if [[ "$start_year" -gt "$end_year" ]]; then
        echo "Error: Start year cannot be greater than end year."
        return 1
    fi

    # If both checks pass
    echo "Valid years: Start year = $start_year, End year = $end_year"
    return 0
}

create_folder() {
    local start_year=$1
    local end_year=$2
    local folder_name=$3

    for ((year = start_year; year <= end_year; year++)); do
        dir_name="$folder_name$year"
        mkdir -p "$dir_name"
        echo "Directory for year $dir_name created."
    done

    return 0

    echo "All directories have been created."

}

get_user_input() {
    read -p "Enter the start year: " start_year
    read -p "Enter the end year: " end_year
    read -p "Enter folder Name: " folder_name
}

get_user_input

check_years "$start_year" "$end_year"
if [[ $? -ne 0 ]]; then
    exit 1 # Exit if input is invalid
fi

create_folder "$start_year" "$end_year" "$folder_name"
