# Linux 실습 문제지 \- nano, 쉘 스크립트, 다중 명령어, chmod

## 기본 개념 정리

### nano 편집기

* **nano** : 터미널 기반 텍스트 편집기  
* **Ctrl+X** : 편집기 종료  
* **Ctrl+O** : 파일 저장  
* **Ctrl+K** : 현재 줄 잘라내기  
* **Ctrl+U** : 잘라낸 텍스트 붙여넣기

권한 부여

* **Chmod 777 대상\_파일명**

  # **Linux 명령어 실습 문제**

  ## **nano 편집기, 실행 쉘 작성, && 연산자 활용**

  ### **실습 환경 설정**

먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

- mkdir shell\_practice  
- cd shell\_practice  
- touch data.txt config.conf notes.md  
- mkdir scripts logs backup  
    
  ---

  ## **문제 1: nano 편집기 활용**

  ### **1-1. 간단한 설정 파일 생성**

nano 편집기를 사용하여 `server.conf` 파일을 생성하고 다음 내용을 입력하세요:

- PORT=8080  
- HOST=localhost  
- DEBUG=true


  # **명령어를 작성하세요**
```shell
[user01@localhost shell_practice]$ ls -l
total 8
drwxr-xr-x. 2 user01 user01  6 Jul 18 14:36 backup
-rw-r--r--. 1 user01 user01  0 Jul 18 14:36 config.conf
-rw-r--r--. 1 user01 user01 21 Jul 18 14:37 data.txt
drwxr-xr-x. 2 user01 user01  6 Jul 18 14:36 logs
-rw-r--r--. 1 user01 user01  0 Jul 18 14:36 notes.md
drwxr-xr-x. 2 user01 user01  6 Jul 18 14:36 scripts
-rw-r--r--. 1 user01 user01 36 Jul 18 14:37 server.conf
```
  ### **1-2. 기존 파일 수정**

nano 편집기로 `data.txt` 파일을 열어서 "Hello Linux World\!" 텍스트를 추가하세요.

# **명령어를 작성하세요**
```shell
[user01@localhost shell_practice]$ cat data.txt 
"Hello Linux World!"
```
---

## **문제 2: 실행 가능한 쉘 스크립트 작성**

### **2-1. 백업 스크립트 생성**

`backup.sh` 파일을 생성하여 다음 기능을 수행하는 스크립트를 작성하세요:

* 현재 날짜와 시간 출력  
* `data.txt` 파일을 `backup` 디렉토리에 복사  
* 복사 완료 메시지 출력

  # **스크립트 파일 생성 및 실행 권한 부여 명령어를 작성하세요**
```shell
#파일 생성 및 실행
[user01@localhost shell_practice]$ nano backup.sh
[user01@localhost shell_practice]$ sh backup.sh
현재 날짜 및 시간: Fri Jul 18 02:43:13 PM KST 2025
data.txt 복사 완료

#파일 권한 부여 
chmod 777 ./backup.sh

#쉘 실행
sh backup.sh 

#결과값 
user01@localhost Downloads]$ tree
.
├── demo
│   ├── backup
│   │   ├── file1.txt
│   │   └── file2.txt
│   └── original
│       ├── file1.txt
│       ├── file2.txt
│       └── image1.png
├── example_first.txt
├── first_nano.sh
└── shell_practice
    ├── backup
    │   └── data.txt
    ├── backup.sh
    ├── config.conf
    ├── data.txt
    ├── logs
    ├── notes.md
    ├── scripts
    └── server.conf
```

  ### **2-2. 시스템 정보 출력 스크립트**

`sysinfo.sh` 스크립트를 생성하여 현재 사용자명, 현재 디렉토리, 디스크 사용량을 출력하는 스크립트를 작성하고 실행하세요.

# **명령어를 작성하세요**
```shell
[user01@localhost shell_practice]$ nano sysinfo.sh
[user01@localhost shell_practice]$ sh sysinfo.sh 
현재 사용자명: user01
현재 디렉토리: /home/user01/Downloads/shell_practice
디스크 사용량:
Filesystem           Size  Used Avail Use% Mounted on
devtmpfs             4.0M     0  4.0M   0% /dev
tmpfs                870M     0  870M   0% /dev/shm
tmpfs                348M  7.2M  341M   3% /run
/dev/mapper/rl-root   17G  5.6G   12G  33% /
/dev/nvme0n1p1       960M  366M  595M  39% /boot
tmpfs                174M  108K  174M   1% /run/user/1000
/dev/sr0              12G   12G     0 100% /run/media/user01/Rocky-9-6-x86_64-dvd
```
---

## **문제 3: && 연산자를 이용한 다중 명령어 실행**

### **3-1. 디렉토리 생성과 파일 생성**

`projects` 디렉토리를 생성하고, 성공하면 그 안에 `readme.txt` 파일을 생성하는 한 줄 명령어를 작성하세요.

# **명령어를 작성하세요**
```shell
mkdir -p ./projects/ && touch ./projects/readme.txt
```

### **3-2. 파일 존재 확인과 내용 출력**

`server.conf` 파일이 존재하는지 확인하고, 존재하면 파일 내용을 출력하는 한 줄 명령어를 작성하세요.

# **명령어를 작성하세요**
```shell
find ./ -type f -name "server.conf" -exec cat {} +
```
### **3-3. 복합 작업 실행**

다음 작업을 && 연산자로 연결하여 한 줄로 실행하세요:

1. `logs` 디렉토리로 이동  
2. `access.log` 파일 생성  
3. 현재 디렉토리 내용 출력  
4. 상위 디렉토리로 복귀

# 
```shell
cd ./logs/ && touch ./access.log && ls -l && cd ..
```

