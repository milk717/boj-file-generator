#!/bin/bash

#파일이 생성될 경로를 입력하세요.
readonly FILE_PATH="/Users/milk717/GitHub/Algorithm/BOJ"
#파일의 확장자를 입력하세요.
readonly FILENAME_EXTENSION="js"
#현재 프로젝트의 경로를 입력하세요.
readonly PROJECT_PATH="/Users/milk717/Script/boj-file-generator"

trap 'catch $? $LINENO' ERR
catch() {
  if [ "$1" != "0" ]; then
    echo "$2번째 줄에서 Error $1 발생"
    if [ "$2" == "21" ]; then
      echo "올바른 링크 형식을 입력해주세요."
    fi
    exit 1
  fi
}

boj_link=${1}
filename=$(node $PROJECT_PATH/index.js "$boj_link")
touch "$FILE_PATH/$filename.$FILENAME_EXTENSION"
