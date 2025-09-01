# git add . 은 모든 변경(추가) 사항을 스테이징 영역에 추가합니다.
git add .

# git commit 은 staging area에 있는 변경 사항을 확정짓고 commitID 생성
git commit -m "메시지"

# 원격 repo에 main 브랜치 변경사항(commitID)를 업로드
git push origin main

# 현재 상태 확인, working directory, staging area 상태 확인
git status

# 특정 파일만 스테이징 영역에 추가하고 싶다면
git add 특정파일(위치 포함)

# local repo에 커밋 이력 생성
git commit -m "메시지타이틀" -m "상세 메시지" 

# vi 에디터 모드에서 작성: 첫줄에는 제목, 두번째줄부터 내용 작성
git commit

# add와 commit을 동시에 진행
git commit -am "add and commit을 동시에"

# local repo에 커밋 이력 조회
git log

# git log를 간결하게 조회
git log --oneline

# git 로그를 그래프로 조회
git log --graph

# main 브랜치 뿐만 아니라 모든 브랜치의 커밋 이력을 조회 (fetch된 원격 브랜치 포함)
git log --all

# 충돌 무시하고 강제 push
git push -f origin main

# 특정 커밋ID로 되돌리기(소스코드를 과거의 특정 버전으로 되돌릴 때)
git checkout 커밋ID

# 다시 현재 브랜치의 commitID로 돌아오기
git checkout main

# git pull은 원격의 변경사항을 local로 내려 받는 것 (원격지 변경사항을 로컬(working directory 포함)에 반영)
# git pujj = git fetch + git merge
git pull origin main

# git fetch는 원격지 변경사항을 local repo로 내려 받는 것 (working directory에는 반영X)
git fetch origin main

# git 작업 취소
# commit 이후의 취소
git reset head~1
git reset head^

# staging area로 까지만 취소
git reset --soft head~1

# push 이후의 취소
# 1. git revert : 되돌리기 위한 새로운 커밋을 생성 (안전한 방법)
git revert 커밋ID  # commit 메시지 작성 vi 에디터 모드 -> wq!

# 작업 중인 사항을 임시 저장 (충돌상황에서 많이 사용)
git stash
# 저장한 최신의 작업목록을 꺼내기
git stash pop
# 임시 저장한 목록은 그대로 둔채 특정 index 항목 적용
git stash apply
# 임시 저장한 작업 내용 조회
git stash show -p 인덱스번호
# 임시 저장한 작업 목록 조회
git stash list
# 저장목록 모두 삭제
git stash clear

# 버전 명시
git tag v1.0
git tag -a v1.0 -m "1.주요사항A 2.주요사항B"  # -a : annotated tag, -m : 메시지

# tag release 배포
# commit push와 상관없이 태그를 별도로 push
git push origin v1.0  # 원격 저장소에 태그 업로드

# tag 목록 조회
git tag