#!/bin/bash


dir=$(pwd)


ls | while read file; do
   fullpath=$dir/$file
    
    if [[  $file == "." ||  $file == ".." ]]
    then
        continue
    fi
    
    if [[ -d  "$file" ]]
    then
        size=$(du -sh "$fullpath" | awk '{print $1}')
        echo "Directory: $file ($size)"
        
    elif [[ -f "$file" ]]
    then
        size=$(du -h "$fullpath" | awk '{print $1}')
        echo "File: $file ($size)"
        
        
    fi


done



size=$(du -sh ${dir} | awk '{print $1}' )

 echo "Total: $dir ($size) " 

 