#!/bin/bash

#파일이 생성될 경로를 입력하세요.
FILE_PATH="/Users/milk717/GitHub/Algorithm/BOJ"
#파일의 확장자를 입력하세요.
FILENAME_EXTENSION="js"

boj_link=${1}
filename=$(node index.js "$boj_link")
touch "$FILE_PATH/$filename.$FILENAME_EXTENSION"
