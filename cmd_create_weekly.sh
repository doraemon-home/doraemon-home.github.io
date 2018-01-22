#!/bin/bash
# 2018-01-22-weekly

create_weekly_file() 
{
    strPath='./_weekly/'
    fileName=$strPath$1
    if [ ! -d "$strPath" ]; then
        mkdir "$strPath" 
    fi
    if [ ! -f "$fileName" ]; then
        cp "./template/weekly.md" $fileName
        echo_green "create weekly file success : "$fileName
    else
        echo_red "warning: weekly "$fileName" has been created!!!"
    fi
    
}

echo_green()
{
    while [ "$1" != ""  ];do
        echo -e "\033[32;1m$1\033[0m"
        shift
    done
}

echo_red()
{
    while [ "$1" != "" ];do
        echo -e "\033[31;1m$1\033[0m"
        shift
    done
}

strFileName=$(date +%Y-%m-%d)-weekly.md
create_weekly_file $strFileName
