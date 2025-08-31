# github 인증방법 2가지
# 1. oauth인증방식(제3자인증-웹로그인)
# 2. pat token인증방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(자격즈명)에 등록

# git 프로젝트 생성방법 2가지
# 방법1. github에서 진행 중인 원격 rep를 clone
# 방법2. 로컬에서부터 이미 진행 중인 프로젝트를 github에 업로드
# 해당 프로젝트 위치에 .git 폴더 (repo 주소, 사용자 정보 등)가 생성
git init
# 원격지 주소를 생성 및 추가
git remote add origin <원격지 주소>
# 원격지 주소 확인
git remote -v
# 원격지 주소 변경
git remote set-url origin <변경할 원격지 주소>
# 원격지 주소 삭제
git remote remove origin
# git 설정 정보 조회
git config --list

# 타인의 Repo를 clone 받는 방법 2가지
# 1. 커밋이력 그대로 가져오기
git clone <원격지 주소>
# 해당 폴더로 이동 후 github repo 주소 변경
cd <복제된 폴더명>
git remote set-url origin <변경할 원격지 주소>
git push origin main

# 2. 커밋이력 없이 가져오기
# git clone --depth 1 <원격지 주소> or
git clone 타인 repo주소
# 해당 폴더로 이동 후 .git 폴더 삭제
git init
git remote add origin 나의repo주소
git add .
git commit -m "first commit"    
git push origin master

# 사용자 지정 방법
# 전역적 사용자(이름, email) 지정
git config --global user.name "사용자이름"
git config --global user.email "사용자이메일"

# 로컬 사용자(이름, email) 지정 : --local 또는 옵션 생략
# 해당 프로젝트에서만 적용
git config user.name "사용자이름"
git config user.email "사용자이메일"

# 사용자 정보 조회
git config user.name
git config user.email
git config --list

# 특정 파일을 git 추적 목록에서 제외시키고 싶다면 .gitignore 파일에 파일목록 등록
# 이미 add, commit 된 파일은 제외되지 않으므로, 추적 목록에서 제거하고 싶다면
git rm --cached . 
