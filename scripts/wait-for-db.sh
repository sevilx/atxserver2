#!/bin/bash
#

CURDIR=$(dirname $0)
uv run $CURDIR/wait_for_rethinkdb.py && "$@"
