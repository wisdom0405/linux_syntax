#문자열 검색
grep ps

# 파일 또는 디렉토리 검색 : find
find . -name "*.sh"
find . -name "*.sh" | grep "test"

# 파일 검색 후 해당 내용에서 원하는 문자열 찾을 때
# xargs : 넘겨온 파일목록을 한줄한줄 읽겠다는 의미
find . -name "*.sh"|xargs grep -n "hello"

# find로 찾은 파일에 대해 echo 명령어 실행. 찾은 결과는 {}안에 담김
find . -name "*.txt" -exec echo {} \;
find . -name "*.sh" -exec grep -n "hello" {} \;