# Linux 실습 문제지 \- nano, 쉘 스크립트, 다중 명령어, chmod

## 기본 개념 정리

### nano 편집기

* **nano** : 터미널 기반 텍스트 편집기  
* **Ctrl+X** : 편집기 종료  
* **Ctrl+O** : 파일 저장  
* **Ctrl+K** : 현재 줄 잘라내기  
* **Ctrl+U** : 잘라낸 텍스트 붙여넣기

### 쉘 스크립트 기본

* **~~\#\!/bin/bash~~** ~~: 쉘 스크립트 시작 라인 (shebang)~~  
* **실행 권한** : chmod \+x 파일명  
* **실행 방법** : ./파일명 또는 bash 파일명

### 다중 명령어 연산자

* **&&** : 앞 명령어가 성공하면 뒤 명령어 실행  
* **~~||~~** ~~: 앞 명령어가 실패하면 뒤 명령어 실행~~  
* **~~;~~** ~~: 앞 명령어 결과와 관계없이 순차 실행~~

### chmod 권한 설정

* **r(읽기)** : 4, **w(쓰기)** : 2, **x(실행)** : 1  
* **755** : 소유자(rwx), 그룹(rx), 기타(rx)  
* **644** : 소유자(rw), 그룹(r), 기타(r)

## 실습 환경 설정

먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:
```shell
mkdir shell\_practice

cd shell\_practice

touch hello.sh backup.sh system\_info.txt

touch data1.txt data2.txt notes.md

mkdir scripts logs temp
```
## 문제 1: nano 편집기 사용

### 1-1. 기본 파일 생성 및 편집

hello.sh 파일을 nano로 열어 다음 내용을 작성하세요:
```shell
\#\!/bin/bash

echo "안녕하세요\! 리눅스 세계에 오신 것을 환영합니다."
```
**명령어를 작성하세요:**
```shell
nano hello.sh 

cat hello.sh 
\#\!/bin/bash

echo "안녕하세요\! 리눅스 세계에 오신 것을 환영합니다."

```
\# nano 편집기로 hello.sh 파일 열기

### 1-2. 파일 내용 수정

system\_info.txt 파일을 nano로 열어 현재 시스템 정보를 기록하는 내용을 작성하세요.

**명령어를 작성하세요:**
```shell
nano system_info.txt 

"System Info:" $(uname -a)
```
\# nano 편집기로 system\_info.txt 파일 열기

## 문제 2: 쉘 스크립트 작성 및 실행

### 2-1. 기본 쉘 스크립트 작성

backup.sh 파일을 만들어 다음 기능을 수행하는 스크립트를 작성하세요:

- 현재 날짜 출력  
- "백업을 시작합니다" 메시지 출력  
- 현재 디렉터리의 파일 목록 출력

**명령어를 작성하세요:**
```shell
nano backup.sh 

echo "Today:"$(date)
echo "Starting Backup"
echo "File List"$(ls -l)
```
\# nano로 backup.sh 파일 생성 및 편집

### 2-2. 스크립트 실행 권한 부여

backup.sh 파일에 실행 권한을 부여하세요.

**명령어를 작성하세요:**
```shell
chmod 500 backup.sh
#결과
ls -l backup.sh 
-r-x------. 1 user01 user01 71 Jul 18 17:27 backup.sh
```
\# backup.sh 파일에 실행 권한 부여

### 2-3. 스크립트 실행

작성한 backup.sh 스크립트를 실행하세요.

**명령어를 작성하세요:**
```shell
./backup.sh
#결과
Today:Fri Jul 18 05:31:47 PM KST 2025
Starting Backup
File List:total 12 -r-x------. 1 user01 user01 71 Jul 18 17:27 backup.sh -rw-r--r--. 1 user01 user01 0 Jul 18 17:17 data1.txt -rw-r--r--. 1 user01 user01 0 Jul 18 17:17 data2.txt -rw-r--r--. 1 user01 user01 91 Jul 18 17:17 hello.sh drwxr-xr-x. 2 user01 user01 6 Jul 18 17:17 logs -rw-r--r--. 1 user01 user01 0 Jul 18 17:17 notes.md drwxr-xr-x. 2 user01 user01 6 Jul 18 17:17 scripts -rw-r--r--. 1 user01 user01 26 Jul 18 17:19 system_info.txt drwxr-xr-x. 2 user01 user01 6 Jul 18 17:17 temp

```
\# backup.sh 스크립트 실행

## 문제 3: && 연산자를 이용한 다중 명령어

### 3-1. 조건부 실행

디렉터리 생성이 성공하면 해당 디렉터리로 이동하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
mkdir ./new_project && cd ./new_project
```
\# new\_project 디렉터리 생성 후 성공하면 이동

### 3-2. 파일 생성 및 편집

test.txt 파일을 생성하고 성공하면 nano로 편집하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
touch test.txt && nano test.txt
```
\# test.txt 파일 생성 후 성공하면 nano로 편집

### 3-3. 복합 조건부 실행

스크립트 파일을 생성하고, 실행 권한을 부여한 후, 실행하는 일련의 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
nano quick_test.sh
chmod 500 quick_test.sh && \
./quick_test.sh
Hello World
```
\# quick\_test.sh 파일에 "echo 'Hello World'" 내용 저장 후 실행 권한 부여 후 실행

## 문제 4: chmod를 이용한 권한 조정

### 4-1. 기본 권한 설정

test\_script.sh 파일을 생성하고 소유자에게만 모든 권한을 부여하세요.

**명령어를 작성하세요:**
```shell
touch test_scripts.sh && chmod 700 test_scripts.sh

ls -l test_scripts.sh
-rwx------. 1 user01 user01 0 Jul 18 17:43 test_scripts.sh

```
\# test\_script.sh 파일 생성

\# 소유자에게만 읽기, 쓰기, 실행 권한 부여 (700)

### 4-2. 그룹 권한 추가

test\_script.sh 파일에 그룹 사용자에게 읽기 및 실행 권한을 추가하세요.

**명령어를 작성하세요:**
```shell
chmod 750 test_scripts.sh

ls -l test_scripts.sh
-rwxr-x---. 1 user01 user01 0 Jul 18 17:43 test_scripts.sh

```
\# 그룹에 읽기, 실행 권한 추가 (750)

### 4-3. 권한 확인

파일의 현재 권한을 확인하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
ls -l test_scripts.sh

-rwxr-x---. 1 user01 user01 0 Jul 18 17:43 test_scripts.sh
```
\# 파일 권한 확인

### 4-4. 실행 권한 제거

test\_script.sh 파일에서 모든 사용자의 실행 권한을 제거하세요.

**명령어를 작성하세요:**
```shell
chmod 640 test_scripts.sh

ls -l test_scripts.sh
-rw-r-----. 1 user01 user01 0 Jul 18 17:43 test_scripts.sh
```
\# 모든 사용자의 실행 권한 제거

## 문제 5: 종합 실습

### 5-1. 자동화 스크립트 작성

다음 기능을 수행하는 setup.sh 스크립트를 작성하세요:

1. logs 디렉터리가 없으면 생성  
2. 현재 날짜와 시간을 logs/setup.log 파일에 기록  
3. "설정 완료" 메시지 출력

**작성할 스크립트 내용:**
```shell
\#\!/bin/bash

\# setup.sh 스크립트 내용을 작성하세요
mkdir -p ./logs/ && \
cd ./logs/ && \
echo "Date: $(date)" >> setup.log && \
echo "설정완료"
```

### 5-2. 스크립트 실행 및 검증

setup.sh 스크립트를 실행하고, 로그 파일이 제대로 생성되었는지 확인하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
chmod 500 setup.sh 

ls -l setup.sh 
-r-x------. 1 user01 user01 97 Jul 18 18:20 setup.sh

sh setup.sh 
설정완료

cat logs/setup.log 
Date: Fri Jul 18 06:20:58 PM KST 2025
```
\# setup.sh 실행 권한 부여 후 실행하고, 로그 파일 내용 확인

## 문제 6: 오류 처리 및 조건부 실행

### 6-1. 파일 존재 확인

important.txt 파일이 존재하면 백업을 생성하고, 존재하지 않으면 "파일이 없습니다" 메시지를 출력하는 명령어를 작성하세요.

**명령어를 작성하세요:**
```shell
#일단 보류
find grep echo ???

find find echo ??
```
\# important.txt 파일이 존재하면 백업 생성, 없으면 오류 메시지 출력

### 6-2. 디렉터리 이동 및 파일 생성

backup 디렉터리로 이동이 성공하면 현재 시간을 기록한 timestamp.txt 파일을 생성하세요.

**명령어를 작성하세요:**
```shell
cd backup && echo "Date: $(date)" >> timestamp.txt
```
\# backup 디렉터리로 이동 후 성공하면 timestamp.txt 파일 생성

### **🔧 문제 7: 조건문과 사용자 입력 활용**

#### **7-1. 사용자 입력에 따라 동작하는 스크립트 작성**

`greeting.sh` 파일을 작성하여, 사용자에게 이름을 입력받고 다음과 같이 출력되도록 하세요:
```shell
bash  
복사편집  
`안녕하세요, [입력한 이름]님!`
```
작성할 명령어:

bash  
복사편집  
`# greeting.sh 생성 및 편집`

#### **7-2. 조건문을 이용한 인사 시간대 구분**

`time_greet.sh` 스크립트를 작성하여 현재 시간을 기준으로 다음 조건에 따라 메시지를 출력하세요:

* 5시\~11시: "좋은 아침입니다."

* 12시\~17시: "좋은 오후입니다."

* 그 외: "좋은 저녁입니다."

작성할 명령어:

bash  
복사편집  
`# time_greet.sh 생성 및 편집`

---

### **📂 문제 8: 파일 리다이렉션 및 파이프 사용**

#### **8-1. 출력 리다이렉션**

현재 디렉터리의 모든 `.txt` 파일 목록을 `txt_list.txt`에 저장하세요.

bash  
복사편집  
`# .txt 파일 목록을 txt_list.txt로 저장`

#### **8-2. 파이프 사용**

`system_info.txt` 파일에 다음 정보를 파이프와 함께 기록하세요:

* 현재 로그인 사용자

* 현재 시간

* 시스템의 커널 버전

작성 예시:

bash  
복사편집  
`# system_info.txt에 정보 추가`

#### **8-3. 표준 출력과 오류 출력 분리 저장**

존재하지 않는 디렉터리에 접근하여 나오는 **오류 메시지**는 `error.log`에, **정상 메시지**는 `output.log`에 저장되도록 명령어를 작성하세요.

bash  
복사편집  
`# 오류 출력과 표준 출력을 구분하여 리디렉션`

---

### **🔍 문제 9: 파일 비교 및 사용자 함수**

#### **9-1. 파일 비교 스크립트**

`compare_files.sh` 스크립트를 작성하여 다음 기능을 수행하세요:

* 사용자로부터 두 파일 이름을 입력받아

* 파일 내용이 같으면 `"두 파일은 동일합니다."`, 다르면 `"파일이 다릅니다."` 출력

작성할 명령어:

bash  
복사편집  
`# compare_files.sh 생성 및 편집`

#### **9-2. 사용자 정의 함수 활용**

`functions_demo.sh` 스크립트를 작성하여 다음을 수행하세요:

* `say_hello`라는 함수를 정의하여 "Hello from function\!"을 출력

* 해당 함수를 호출하여 메시지를 출력

작성할 명령어:

bash  
복사편집  
`# functions_demo.sh 생성 및 편집`

---

**주의사항:**

- 모든 명령어는 실제 터미널에서 테스트해보세요  
- 스크립트 작성 시 shebang(\#\!/bin/bash)을 반드시 포함하세요  
- 권한 변경 후에는 ls \-l 명령어로 확인하는 습관을 가지세요  
- 실습 후 생성된 파일들은 정리해주세요

