#!/bin/bash

FROM=$1

./find.sh "$FROM" "echo {}" | wc -l
