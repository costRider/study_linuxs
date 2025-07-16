## 연습문제 1: 기본 파일 시스템 탐색
### 1-1. 현재 위치 확인 및 이동
현재 작업 디렉터리의 절대 경로를 출력하시오.
```
[user01@localhost ~]$ pwd
/home/user01
```
홈 디렉터리로 이동하시오.
```
[user01@localhost ~]$ cd /home
[user01@localhost home]$
```
루트 디렉터리(/)로 이동하시오.
```
[user01@localhost ~]$ cd /
[user01@localhost /]$ 
```
다시 홈 디렉터리로 돌아가시오.
```
[user01@localhost /]$ cd /home
[user01@localhost home]$ 
```
### 1-2. 디렉터리 내용 확인
현재 디렉터리의 파일과 폴더 목록을 출력하시오.
```
[user01@localhost home]$ ls
user01
[user01@localhost home]$ 
```
숨김 파일을 포함한 모든 파일의 상세 정보를 출력하시오.
```
[user01@localhost home]$ ls -al
total 4
drwxr-xr-x.  3 root   root     20 Jul 16 10:21 .
dr-xr-xr-x. 18 root   root    235 Jul 16 10:12 ..
drwx------. 14 user01 user01 4096 Jul 16 10:21 user01
[user01@localhost home]$ 
```
/etc 디렉터리의 내용을 확인하시오.
 * 디렉토리 권한이 없어 user01 디렉토리 내부에서 진행함.
```
[user01@localhost ~]$ mkdir etc
[user01@localhost ~]$ ls
Desktop    Downloads  Music     Public     Videos
Documents  etc        Pictures  Templates
[user01@localhost ~]$ 
```
## 연습문제 2: 디렉터리 및 파일 생성
### 2-1. 디렉터리 구조 생성
다음과 같은 디렉터리 구조를 생성하시오:
```
practice/

├── documents/
│   ├── reports/ls
│   └── notes/
├── images/
└── backup/
```
```
[user01@localhost ~]$ mkdir practice
[user01@localhost ~]$ cd practice
[user01@localhost practice]$ ls
[user01@localhost practice]$ mkdir documents
[user01@localhost practice]$ mkdir images
[user01@localhost practice]$ mkdir backup
[user01@localhost practice]$ cd documents
[user01@localhost documents]$ mkdir reports
[user01@localhost documents]$ mkdir notes
[user01@localhost documents]$ cd reports
[user01@localhost reports]$ mkdir ls
[user01@localhost reports]$ cd /home/user01
[user01@localhost ~]$ cd practice
[user01@localhost practice]$ tree
.
├── backup
├── documents
│   ├── notes
│   └── reports
│       └── ls
└── images

6 directories, 0 files
```

### 2-2. 파일 생성 및 내용 작성
practice/documents/ 디렉터리에 readme.txt 파일을 생성하고 "Hello Linux!"라는 내용을 작성하시오.
```
[user01@localhost documents]$ touch readme.txt
[user01@localhost documents]$ vi readme.txt
```
practice/notes/ 디렉터리에 memo.txt 파일을 생성하고 "Linux 명령어 연습 중"이라는 내용을 작성하시오.
```
[user01@localhost practice]$ mkdir notes
[user01@localhost practice]$ ls
backup  documents  images  notes
[user01@localhost practice]$ cd notes/
[user01@localhost notes]$ touch memo.txt
[user01@localhost notes]$ vi memo.txt 
```
## 연습문제 3: 파일 내용 확인 및 조작
### 3-1. 파일 내용 출력
앞서 생성한 readme.txt 파일의 내용을 출력하시오.
```
[user01@localhost practice]$ cd documents/
[user01@localhost documents]$ cat readme.txt 
"Hello Linux!"
```
memo.txt 파일의 내용을 출력하시오.
```
[user01@localhost documents]$ cd ..
[user01@localhost practice]$ cd notes/
[user01@localhost notes]$ cat memo.txt 
 "Linux 명령어 연습 중"
```
### 3-2. 파일 복사
readme.txt 파일을 backup/ 디렉터리에 복사하시오.
```
[user01@localhost notes]$ cp /home/user01/practice/documents/readme.txt /home/user01/practice/backup/readme.txt
```
documents/ 디렉터리 전체를 backup/ 디렉터리에 복사하시오.
```
[user01@localhost notes]$ cp -r /home/user01/practice/documents /home/user01/practice/backup/
```
## 연습문제 4: 파일 이동 및 이름 변경
### 4-1. 파일 이동
memo.txt 파일을 documents/ 디렉터리로 이동하시오.
```
[user01@localhost practice]$ mv /home/user01/practice/notes/memo.txt /home/user01/practice/documents/memo.txt
```
images/ 디렉터리를 practice/media/로 이름을 변경하시오.
```
[user01@localhost practice]$ mv /home/user01/practice/images/ /home/user01/practice/media
```
### 4-2. 파일 이름 변경
readme.txt를 introduction.txt로 이름을 변경하시오.
```
[user01@localhost practice]$ mv /home/user01/practice/documents/readme.txt /home/user01/practice/documents/introduction.txt
```
memo.txt를 study_notes.txt로 이름을 변경하시오.
```
[user01@localhost practice]$ mv /home/user01/practice/documents/memo.txt /home/user01/practice/documents/study_note.txt
```
## 연습문제 5: 종합 실습
### 5-1. 프로젝트 디렉터리 생성
다음 요구사항에 따라 프로젝트 디렉터리를 생성하시오:
my_project/라는 최상위 디렉터리 생성
```
[user01@localhost practice]$ cd ..
[user01@localhost ~]$ ls
Desktop    Downloads  Music     practice  Templates
Documents  etc        Pictures  Public    Videos
[user01@localhost ~]$ mkdir my_project
```
하위에 src/, docs/, tests/, config/ 디렉터리 생성
```
[user01@localhost ~]$ cd my_project/
[user01@localhost my_project]$ mkdir src
[user01@localhost my_project]$ mkdir docs
[user01@localhost my_project]$ mkdir tests
[user01@localhost my_project]$ mkdir config
```
src/ 디렉터리에 main.py 파일 생성 (내용: "# Main Python File")
```
[user01@localhost src]$ touch main.py
[user01@localhost src]$ vi main.py
```
docs/ 디렉터리에 README.md 파일 생성 (내용: "# My Project Documentation")
```
[user01@localhost docs]$ touch README.md
[user01@localhost docs]$ vi README.md 
```
config/ 디렉터리에 settings.conf 파일 생성 (내용: "# Configuration File")
```
[user01@localhost my_project]$ cd config/
[user01@localhost config]$ touch settings.conf
[user01@localhost config]$ vi settings.conf 
```
### 5-2. 백업 및 정리
전체 my_project/ 디렉터리를 my_project_backup/으로 복사하시오.
```
[user01@localhost ~]$ cp -r /home/user01/my_project my_project_backup/
```
my_project/src/main.py 파일을 /home/user01/my_project/src/app.py로 이름을 변경하시오.
```
[user01@localhost src]$ mv /home/user01/my_project/src/main.py app.py
```
my_project/docs/README.md 파일을 my_project/ 디렉터리로 이동하시오.
```
[user01@localhost docs]$ mv /home/user01/my_project/docs/README.md /home/user01/my_project/README.md
```

