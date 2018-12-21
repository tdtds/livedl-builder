#!/bin/sh
git clone https://github.com/himananiito/livedl.git
cd livedl
go build -o /usr/local/bin/livedl src/livedl.go && echo build successfully. see /usr/local/bin/livedl
