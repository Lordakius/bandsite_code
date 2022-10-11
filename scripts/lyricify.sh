#!/bin/sh

# add two whitespaces after each line
sed -i 's/$/  &/' $1

# add the header for the hugo page
# its a bit complicated, its prototype, make something fancier for production (lol)
header="---
title: \"\"
draft: \"false\"
---

"
x=`echo "$header"; cat $1`
echo "$x" > $1
