#!/bin/bash
find /home/js -maxdepth 1 -name "*.js"  | while read f
do
    #split f path by / and get file name
    IFS='/' read -a name <<< ${f}
    cmd="/home/node/node_modules/javascript-obfuscator/bin/javascript-obfuscator /home/js/${name[-1]} --output /home/enc/${name[-1]}"
    eval $cmd
done

