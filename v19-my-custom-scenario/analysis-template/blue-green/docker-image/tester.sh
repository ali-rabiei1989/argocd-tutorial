#!/bin/sh

RC=$(curl -s -o /dev/null -w "%{http_code}" http://app.demo.local )

if [ "$RC" -eq 200 ]
then
    echo "OK"
else
    echo "Failed"
fi