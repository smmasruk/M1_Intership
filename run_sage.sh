#!/bin/bash

# Source the SageMath environment
source /path/to/sage/env.sh

# Print environment variables for debugging
echo "Environment Variables:"
env

# Print the current directory
echo "Current Directory: $(pwd)"

# Print the arguments passed to the script
echo "Arguments: $@"

# Run the SageMath script with the passed arguments
sage "$@"

# Capture and print the exit status of the sage command
exit_status=$?
echo "SageMath script exited with status: $exit_status"
exit $exit_status

