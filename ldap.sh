#!/bin/zsh
echo "input login name:"
read NAME
ldapsearch -Q uid=$NAME | grep "mobile"
