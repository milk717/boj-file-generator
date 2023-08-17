#!/bin/bash

#파일이 생성될 경로를 입력하세요.
readonly FILE_PATH="/Users/milk717/GitHub/Algorithm/BOJ"
#파일의 확장자를 입력하세요.
readonly FILENAME_EXTENSION="js"
#현재 프로젝트의 경로를 입력하세요.
readonly PROJECT_PATH="/Users/milk717/Script/boj-file-generator"

boj_link=${1}
filename=$(node $PROJECT_PATH/index.js "$boj_link")
touch "$FILE_PATH/$filename.$FILENAME_EXTENSION"
