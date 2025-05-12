#!/bin/bash

ZIP_FILE="function.zip"

# Step 1: Zip the Python file
zip $ZIP_FILE lambda_function.py

# Step 2: Update Lambda
export AWS_ACCESS_KEY_ID="AKIAIOSFODNN7EXAMPLE"
export AWS_SECRET_ACCESS_KEY="wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"
export AWS_DEFAULT_REGION="us-east-1"

aws lambda update-function-code \
    --function-name AcmeLambdaFunction
    --zip-file fileb://$ZIP_FILE
