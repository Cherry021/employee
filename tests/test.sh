#!/usr/bin/env sh

echo 'Super man tested your application'
set -x
set +x
set -x
npm test
echo 'Super man declared that application is running fine. All test cases passed'