# BOJ 파일 자동 생성 스크립트
> BOJ 문제 링크를 입력받아 `문제번호_문제이름_티어` 형식의 파일을 생성해주는 스크립트입니다. 
# 실행 방법
## 1. git clone을 이용해서 코드를 내려받기
```shell
git clone https://github.com/milk717/boj-file-generator.git
```
## 2. 파일 생성 경로와 확장자 입력하기
`boj.sh` 파일의 `FILE_PATH`, `FILENAME_EXTENSION`, `PROJECT_PATH` 변수에
아래 예시처럼 입력합니다.
```shell
#파일이 생성될 경로를 입력하세요.
FILE_PATH="/Users/milk717/GitHub/Algorithm/BOJ"
#파일의 확장자를 입력하세요.
FILENAME_EXTENSION="js"
#현재 프로젝트의 경로를 입력하세요.
PROJECT_PATH="/Users/milk717/Script/boj-file-generator"
```
_경로는 각자 환경에 따라 다릅니다_
## 3. 전역에서 실행할 수 있도록 터미널 환경변수 파일 수정
터미널 환경변수 파일에 아래와 설명대로 경로를 등록합니다.  
아래 예시는 Zsh쉘 기준으로 작성되었습니다.
### 3-1. 환경변수 설정파일 진입하기
```shell
vi ~/.zshrc #vi 에디터로 환경변수 설정파일 열기
code ~/.zshrc #vsCode로 환경변수 설정파일 열기
```
### 3-2. 스크립트 파일 환경변수 추가
```shell
# BOJ file generator
export PATH=$PATH:/Users/milk717/Script/boj-file-generator
```
.zshrc 파일 제일 하단에 다음과 같이 위와 같이 현재 프로젝트의 경로를 환경변수로
선언해주세요.  
_경로는 각자 환경에 따라 다릅니다_
## 4. 실행하기
```shell
boj.sh [백준 문제 링크]

## ex)
boj.sh https://www.acmicpc.net/problem/2083
```
위와 같은 형식으로 스크립트를 실행하면 `FILE_PATH`에 입력한 경로에
`2083_럭비 클럽_B5.js`라는 파일명으로 빈 파일이 생성됩니다. 
# 참고자료
- [쉘 스크립트 변수명 규칙](https://chanchan-father.tistory.com/802)  
- [쉘 스크립트 프로그래밍 문법](https://inpa.tistory.com/entry/LINUX-%EC%89%98-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D-%ED%95%B5%EC%8B%AC-%EB%AC%B8%EB%B2%95-%EC%B4%9D%EC%A0%95%EB%A6%AC)
- [쉘 스크립트 문법 검사 사이트](https://www.shellcheck.net/)
- [trap을 사용한 에러처리](https://medium.com/@dirk.avery/the-bash-trap-trap-ce6083f36700)
