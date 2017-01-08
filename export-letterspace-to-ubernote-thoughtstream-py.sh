#!/bin/bash

python ~/code/LiveLog/export-letterspace-to-ubernote-thoughtstream-py.py
#python /Users/jacob/Dropbox/Other/letterspace-export/export-letterspace-to-ubernote-thoughtsream-py.py

open http://localhost:8000/LiveLog1.5.htm

pushd ~/code/LiveLog/; python -m SimpleHTTPServer; popd
