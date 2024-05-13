# 사용자가 현재 위치해 있는 폴더 경로 출력 명령어
pwd 

# 현재위치에서 파일, 폴더 목록 출력
ls

# + 자세히 (l옵션)
ls -l

# + 숨김파일까지 출력 (-al옵션)
ls -al 

# + 시간순서로 정렬 등등..
ls -alrt

# 디렉토리 생성 (make directory)
mkdir my_dir

# 특정 디렉토리로 이동
cd my_dir

# root 디렉토리로 이동(최상단 디렉토리)
cd /

# 절대 경로 폴더로 이동 (/ : root)
cd /home/wisdom/my_dir

# 상대 경로 폴더로 이동
# 일반적으로 ..은 1단계 상위폴더를 의미, .하나는 현재폴더를 의미
cd ..
cd ../

# 특정계정의 home 경로로 이동
cd 

# 직전위치의 폴더로 이동
cd-

# 비어있는 파일 생성
touch first_file.txt

# d : directory, d가 없으면 디렉토리 아님.

# 파일 내용 조회
cat first_file.txt

# 터미널창에 문자열 출력하는 명령어
echo "hello world"

# echo를 통해 파일에 문자열을 write 하는 방법
#  > 하나를 쓰면 덮어쓰기 모드, >> 두개를 쓰면 추가모드
echo "hello world" > first_file.txt
# cat first_file.txt 하면 "hello world" 출력됨

# 상하 방향키 사용 : 이전/이후 입력했던 명령어 조회

# history 명령어를 통해 이전에 실행했던 명령어 조회
history

# 입력중인 명령어 정리
clear

# 잘라내서 붙이기 => 이동(mv)
# 이름바꾸기 => 이동 a.txt b.txt명으로 이동

# mv는 이동명령어
# "mv a.txt b.txt" 형식으로 사용 => 사실상 이름변경
# "mv a.txt ../b.txt" 형식으로 사용 => 잘라내서 붙이기 (../b : 상위폴더의 b로 이동)

# first_file.txt를 second_file.txt로 이름 변경
mv first_file.txt second_file.txt

# second_file.txt를 my_dir2로 이동(이름 변경없이)
mv second_file.txt ../my_dir2

# 파일 복사명령어는 cp, 디렉토리까지 복사시에는 -r 옵션 추가
cp second_file.txt third_file.txt 

# second_file.txt를 third_file.txt로 복사
cp second_file.txt third_file.txt

# my_dir2를 통째로 복사해서 my_dir3를 만들자
cp -r my_dir2 my_dir3

# rm은 삭제 명령어, -r옵션을 통해 디렉토리까지 삭제
# third_file.txt 삭제
rm third_file.txt

# 리눅스마다 차이가 있으나 삭제할지 말지 물어보는 경우가 있ㄴ는데 
# -f 옵션은 묻지않고 삭제가 가능하게 한다.
rm -f third_file.txt

# 묻지않고 디렉토리까지 모두 삭제하는 명령어
rm -rf my_dir3

# 현재폴더에 있는 모든 파일 삭제
rm -rf *

# head는 cat처럼 파일을 출력하는 것인데, 상위 n개 행 조회
# tail은 하위 n개 행 조회
head second_file.txt # 기본은 상위 10줄 조회
head -5 second_file.txt # 상위 5줄 조회
tail second_file.txt # 하위 10줄 조회
tail -5 second_file.txt # 하위 5줄 조회

# nano 편집기 사용
nano 파일명
nano second_file.txt

# 모든 운영체제에 nano편집기가 설치가 되어 있을까? => 배포판마다 다르다
# => 일반적으로 vi편집기는 대부분 설치가 되어 있다.