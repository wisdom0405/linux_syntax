# 스크립트 파일 생성 (빈 파일 생성)
touch myscript.sh

# 스크립트 파일 작성
nano myscript.sh

# test.sh
echo "sh start"
echo "sh end"

# 스크립트 파일 실행 (꼭 ./붙여줘야 됨)
./test.switch

# 실행권한 부여
sudo chmod 764 test.sh

########################## 실습 ############################

# 1. 시작할 때 script start 문구 출력
echo "script start"

# 2. 홈 디렉토리에서 my_dir4 생성
cd /home/wisdom
mkdir my_dir4

# 3. my_dir4에서 file1.txt, file2.txt 파일생성
cd my_dir4
touch file1.txt
touch file2.txt

# 4. file1.txt에서 "hello file1"입력, file2.txt에 "hello file2"입력
echo "hello file1" > file1.txt
echo "hello file2" > file2.txt

# 5. file1은 file1_backup.txt로 백업파일 보관
cp file1.txt file_backup.txt

# 6. file2는 file2_rename.txt로 파일명변경
mv file2.txt file2_rename.txt

# 7. script end 문구 출력하면서 종료
echo "script end"

############################################################

# if 문
if [1 -gt 2]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# if 문과 변수활용, 파일/디렉토리 존재여부 확인
# -f : 파일
file_name="second_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name does not exists"
fi

# for 문
for a in {1..100}
do 
    echo "hello world$a"
done

########################if문 실습#########################
# 1. if문 실습 : test4.sh
# - echo start로 출력
# - 만약에 test_dir이 현재폴더에 있으면 해당폴더로 이동
# - 없으면 해당 폴더 생성
# - echo로 end출력
echo "start"
d_name="test_dir"
if [ -d "$d_name" ]; then
    cd $d_name
else
    mkdir $d_name
fi
echo "end"

# 1. if문 실습 : test4.sh
# - test4.txt 없으면 생성
# - 해당 파일에 
# hello world1
# hello world2
# ...
# hello world100 까지 입력

# /test_dir 안에 test4.txt파일이 있어야 하고, 그안에

if [ -f test4.txt ]; then
else    
    touch test4.txt
fi
for a in {1..100}
do  
    echo "hello world$a" >> test4.txt
done

#for문 활용한 count세기
count=0
for
do
    ((count++))
done
echo "count is $count"

# 특정 디렉토리 안에 file은 몇갠지 
# directory 몇개인지 출력하는 프로그램 만들기

# for문 활용한 모든 파일, directory 목록 출력하기
for a in *
do
    echo "a is $a"
done

# for문 활용한 file의 개수와 directory 개수 세기
f_count=0
d_count=0
for a in *
do
    if [ -f $a ]; then
    ((f_count++))
    else
    ((d_count++))
    fi
done

echo "file count is $f_count"
echo "directory count is $d_count"

# for문 활용한 directory의 개수와 그 외(elsd)의 파일 개수 세기

# 모든 프로세스 출력 (프로세스 = 프로그램0, e: 모든프로세스, f: full format)
ps -ef

# grep: 문자열 검색
# find : 파일찾기
# find로 특정파일 찾아서 grep으로 문자열 검색
# ps -ef로 모든 프로세스 찾고 | grep을 통해 원하는 프로세스를 검색
ps -ef | grep "nginx"

# 마스터프로세스 죽이기
# kill -9[PID]
# PID : process id
kill -9 5611(PID)

# 다시 살리기
sudo apt install nginx
sudo systemctl start nginx

find ~ | grep -rni "hello"
