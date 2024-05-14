# 사용자 추가
useradd 사용자명

# 패스워드 지정
passwd 패스워드

# 사용자목록 조회
# /etc: 사용자계정, 네트워크 설정등의 파일들이 저장
cat /etc/passwd

# 사용자 추가
sudo useradd wisdom2

# 비밀번호 설정
sudo passwd wisdom2
New password : helloworld

# 사용자 전환 (su : switch user)
# 비밀번호 : 전환하고자 하는 사용자의 비밀번호
sudo su - 사용자명 

# 디렉토리 없다고 오류뜸 -> wisdom2 디렉토리 만들어줘야함
sudo mkdir /home/wisdom2

# 다시 내 사용자로 돌아오기
exit

# 파일 소유자/그룹 관리
# 000(소유자) 000(그룹) 000(그 외 others)
# rwx r-x r-x 
# r(4)w(2)x(1)로 이루어져있음

# 파일 권한 관리 (sh : 실행파일, 쉘파일)
chmod 777 test.sh

# user에게 실행권한을 추가하겠다
chmod u+x test.sh

# group에게 읽기권한을 제거하겠다.
chmod g-w test.sh
 
# 파일 소유자/그룹 관리
# 소유자와 그룹 변경
chown 소유자:그룹 파일명






