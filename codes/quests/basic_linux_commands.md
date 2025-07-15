## 연습문제 1: 기본 파일 시스템 탐색
### 1-1. 현재 위치 확인 및 이동
1. 현재 작업 디렉터리의 절대 경로를 출력하시오.
```
PS C:\Develops\quests> pwd

Path
----
C:\Develops\quests
```
2. 홈 디렉터리로 이동하시오.
```
PS C:\Develops\quests> cd C:\Develops\quests
```
3. 루트 디렉터리(/)로 이동하시오.
```
PS C:\Develops\quests> cd C:\Develops\quests
```
4. 다시 홈 디렉터리로 돌아가시오.
```
PS C:\Develops\quests> cd C:\Develops\quests
```
### 1-2. 디렉터리 내용 확인
1. 현재 디렉터리의 파일과 폴더 목록을 출력하시오.
```
PS C:\Develops\quests> ls
PS C:\Develops\quests>
```
2. 숨김 파일을 포함한 모든 파일의 상세 정보를 출력하시오.
```

```
3. /etc 디렉터리의 내용을 확인하시오.
```
PS C:\Develops\quests> cd etc
PS C:\Develops\quests\etc> ls
PS C:\Develops\quests\etc>
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
PS C:\Develops\quests> mkdir practice


    디렉터리: C:\Develops\quests


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:49                practice

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\documents


    디렉터리: C:\Develops\quests\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:49                documents

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\images


    디렉터리: C:\Develops\quests\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:50                images

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\backup


    디렉터리: C:\Develops\quests\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:51                backup

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\documents\reports


    디렉터리: C:\Develops\quests\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:52                reports

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\documents\reports\ls


    디렉터리: C:\Develops\quests\practice\documents\reports


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                ls

PS C:\Develops\quests> mkdir C:\Develops\quests\practice\documents\notes


    디렉터리: C:\Develops\quests\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                notes

PS C:\Develops\quests> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
└─practice
    ├─backup
    ├─documents
    │  ├─notes
    │  └─reports
    │      └─ls
    └─images
```
### 2-2. 파일 생성 및 내용 작성
1. practice/documents/ 디렉터리에 readme.txt 파일을 생성하고 "Hello Linux!"라는 내용을 작성하시오.
```
PS C:\Develops\quests> cd .\practice\
PS C:\Develops\quests\practice> cd .\documents\
PS C:\Develops\quests\practice\documents> "Hello Linux!" > readme.txt
PS C:\Develops\quests\practice\documents> ls


    디렉터리: C:\Develops\quests\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                notes
d-----      2025-07-15   오후 3:53                reports
-a----      2025-07-15   오후 3:54             30 readme.txt
```
2. practice/notes/ 디렉터리에 memo.txt 파일을 생성하고 "Linux 명령어 연습 중"이라는 내용을 작성하시오.
```
PS C:\Develops\quests\practice> mkdir notes


    디렉터리: C:\Develops\quests\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:57                notes

PS C:\Develops\quests\practice> "Linux 명령어 연습 중" > memo.txt
PS C:\Develops\quests\practice> ls


    디렉터리: C:\Develops\quests\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:51                backup
d-----      2025-07-15   오후 3:54                documents
d-----      2025-07-15   오후 3:50                images
d-----      2025-07-15   오후 3:57                notes
-a----      2025-07-15   오후 3:58             34 memo.txt


```
## 연습문제 3: 파일 내용 확인 및 조작
### 3-1. 파일 내용 출력
1. 앞서 생성한 readme.txt 파일의 내용을 출력하시오.
```

```
2. memo.txt 파일의 내용을 출력하시오.
```

```
### 3-2. 파일 복사
1. readme.txt 파일을 backup/ 디렉터리에 복사하시오.
```
PS C:\Develops\quests\practice\documents> cp C:\Develops\quests\practice\documents\readme.txt C:\Develops\quests\practice\backup\readme.txt
PS C:\Develops\quests\practice\documents> cd C:\Develops\quests\practice\backup
PS C:\Develops\quests\practice\backup> ls


    디렉터리: C:\Develops\quests\practice\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:54             30 readme.txt
```
2. documents/ 디렉터리 전체를 backup/ 디렉터리에 복사하시오.
```
PS C:\Develops\quests\practice> cp C:\Develops\quests\practice\documents C:\Develops\quests\practice\backup
PS C:\Develops\quests\practice> cd C:\Develops\quests\practice\backup
PS C:\Develops\quests\practice\backup> ls


    디렉터리: C:\Develops\quests\practice\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:19                documents
-a----      2025-07-15   오후 3:54             30 readme.txt
```
## 연습문제 4: 파일 이동 및 이름 변경
### 4-1. 파일 이동
1. memo.txt 파일을 documents/ 디렉터리로 이동하시오.
```
PS C:\Develops\quests\practice> mv C:\Develops\quests\practice\memo.txt C:\Develops\quests\practice\documents\memo.txt
PS C:\Develops\quests\practice> cd C:\Develops\quests\practice\documents\
PS C:\Develops\quests\practice\documents> ls


    디렉터리: C:\Develops\quests\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                notes
d-----      2025-07-15   오후 3:53                reports
-a----      2025-07-15   오후 3:58             34 memo.txt
-a----      2025-07-15   오후 3:54             30 readme.txt
```
2. images/ 디렉터리를 practice/media/로 이름을 변경하시오.
```
PS C:\Develops\quest\practice> mkdir practice


    디렉터리: C:\Develops\quest\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:29                practice


PS C:\Develops\quest\practice> ls


    디렉터리: C:\Develops\quest\practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:19                backup
d-----      2025-07-15   오후 4:24                documents
d-----      2025-07-15   오후 3:50                images
d-----      2025-07-15   오후 3:57                notes
d-----      2025-07-15   오후 4:29                practice


PS C:\Develops\quest\practice> mv C:\Develops\quest\practice\images\ C:\Develops\quest\practice\practice\media
```
### 4-2. 파일 이름 변경
1. readme.txt를 introduction.txt로 이름을 변경하시오.
```
PS C:\Develops\quest\practice> cd C:\Develops\quest\practice\documents
PS C:\Develops\quest\practice\documents> mv C:\Develops\quest\practice\documents\readme.txt C:\Develops\quest\practice\documents\introduction.txt
PS C:\Develops\quest\practice\documents> ls


    디렉터리: C:\Develops\quest\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                notes
d-----      2025-07-15   오후 3:53                reports
-a----      2025-07-15   오후 3:54             30 introduction.txt
-a----      2025-07-15   오후 3:58             34 memo.txt
```
2. memo.txt를 study_notes.txt로 이름을 변경하시오.
```
PS C:\Develops\quest\practice\documents> mv C:\Develops\quest\practice\documents\memo.txt C:\Develops\quest\practice\documents\study_notes.txt
PS C:\Develops\quest\practice\documents> ls


    디렉터리: C:\Develops\quest\practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                notes
d-----      2025-07-15   오후 3:53                reports
-a----      2025-07-15   오후 3:54             30 introduction.txt
-a----      2025-07-15   오후 3:58             34 study_notes.txt
```
## 연습문제 5: 종합 실습
### 5-1. 프로젝트 디렉터리 생성
다음 요구사항에 따라 프로젝트 디렉터리를 생성하시오:
1. my_project/라는 최상위 디렉터리 생성
```
PS C:\Develops\quest\practice\documents> cd C:\Develops\quest
PS C:\Develops\quest> mkdir my_project


    디렉터리: C:\Develops\quest


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:33                my_project
```
2. 하위에 src/, docs/, tests/, config/ 디렉터리 생성
```
PS C:\Develops\quest> cd C:\Develops\quest\my_project
PS C:\Develops\quest\my_project> mkdir src


    디렉터리: C:\Develops\quest\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:33                src


PS C:\Develops\quest\my_project> mkdir docs


    디렉터리: C:\Develops\quest\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:33                docs


PS C:\Develops\quest\my_project> mkdir tests


    디렉터리: C:\Develops\quest\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:33                tests


PS C:\Develops\quest\my_project> mkdir cofnig


    디렉터리: C:\Develops\quest\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:33                cofnig
```
3. src/ 디렉터리에 main.py 파일 생성 (내용: "# Main Python File")
```
PS C:\Develops\quest\my_project\src> "# Main Python File" > main.py
PS C:\Develops\quest\my_project\src> ls


    디렉터리: C:\Develops\quest\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:34             42 main.py
```
4. docs/ 디렉터리에 README.md 파일 생성 (내용: "# My Project Documentation")
```
PS C:\Develops\quest\my_project\docs> "# My Project Documentation" > README.md
PS C:\Develops\quest\my_project\docs> ls


    디렉터리: C:\Develops\quest\my_project\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:35             58 README.md
```
5. config/ 디렉터리에 settings.conf 파일 생성 (내용: "# Configuration File")
```
PS C:\Develops\quest\my_project\config> "# Configuration File" > settings.config
PS C:\Develops\quest\my_project\config> ls


    디렉터리: C:\Develops\quest\my_project\config


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:36             46 settings.config
```
## 5-2. 백업 및 정리
1. 전체 my_project/ 디렉터리를 my_project_backup/으로 복사하시오.
```
PS C:\Develops\quest> cp C:\Develops\quest\my_project\ C:\Develops\quest\my_project_backup\
PS C:\Develops\quest> cd .\my_project_backup\
PS C:\Develops\quest\my_project_backup> ls


    디렉터리: C:\Develops\quest\my_project_backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:37                my_project
```
2. my_project/src/main.py 파일을 my_project/src/app.py로 이름을 변경하시오.
```
PS C:\Develops\quest\my_project\src> mv C:\Develops\quest\my_project\src\main.py C:\Develops\quest\my_project\src\app.py
PS C:\Develops\quest\my_project\src> ls


    디렉터리: C:\Develops\quest\my_project\src


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 4:34             42 app.py
```
3. my_project/docs/README.md 파일을 my_project/ 디렉터리로 이동하시오.
```
PS C:\Develops\quest\my_project\docs> mv C:\Develops\quest\my_project\docs\README.md C:\Develops\quest\my_project\README.md
PS C:\Develops\quest\my_project\docs> cd C:\Develops\quest\my_project
PS C:\Develops\quest\my_project> ls


    디렉터리: C:\Develops\quest\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:36                config
d-----      2025-07-15   오후 4:40                docs
d-----      2025-07-15   오후 4:38                src
d-----      2025-07-15   오후 4:33                tests
-a----      2025-07-15   오후 4:35             58 README.md
```

