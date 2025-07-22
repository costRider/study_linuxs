# **리눅스 텍스트 처리 명령어 실습 문제**

## **실습 환경 설정**

먼저 다음 명령어를 실행하여 실습 환경을 만들어보세요:

* mkdir text\_processing\_practice  
* cd text\_processing\_practice  
*   
* \# 실습용 파일들 생성  
* echo \-e "apple\\nbanana\\ncherry\\napple\\ndate\\nbanana" \> fruits.txt  
* echo \-e "100\\n50\\n200\\n150\\n75\\n300\\n25" \> scores.txt  
* echo \-e "John:25:Seoul:Engineer\\nMike:30:Busan:Manager\\nSara:22:Seoul:Designer\\nTom:35:Daegu:Developer\\nLisa:28:Seoul:Analyst" \> employees.txt  
* echo \-e "2024-01-15 09:30 INFO System startup complete\\n2024-01-15 09:35 ERROR Database connection failed\\n2024-01-15 09:40 WARNING Memory usage high (85%)\\n2024-01-15 09:45 INFO User login: admin\\n2024-01-15 09:50 ERROR File not found: config.xml\\n2024-01-15 09:55 WARNING Disk space low\\n2024-01-15 10:00 INFO System backup started" \> system.log  
* echo \-e "Linux\\nWindows\\nMacOS\\nLinux\\nUnix\\nWindows\\nLinux" \> operating\_systems.txt  
    
  ---

  ## **문제 1: wc 명령어 활용 (기초)**

**1-1.** `employees.txt` 파일의 총 라인 수를 확인하세요.

* \# 명령어를 작성하세요
wc -l employees.txt 


**1-2.** `system.log` 파일의 단어 수와 문자 수를 함께 출력하세요.

* \# 명령어를 작성하세요
wc -wm system.log

**1-3.** 현재 디렉토리의 모든 `.txt` 파일들의 라인 수를 한 번에 확인하세요.

* \# 명령어를 작성하세요  

 cat *.txt | wc -l

  ---

  ## **문제 2: sort 명령어 활용 (기초)**

**2-1.** `fruits.txt` 파일의 내용을 알파벳 순으로 정렬하여 출력하세요.

* \# 명령어를 작성하세요
sort fruits.txt


**2-2.** `scores.txt` 파일의 숫자를 큰 수부터 작은 수 순으로 정렬하세요.

* \# 명령어를 작성하세요
sort -n -r scores.txt

**2-3.** `employees.txt` 파일을 나이(2번째 필드) 기준으로 정렬하세요.

* \# 명령어를 작성하세요  
sort -t":" -k2 -r employees.txt 

  ---

  ## **문제 3: uniq 명령어 활용 (중급)**

**3-1.** `fruits.txt` 파일에서 중복을 제거하고 고유한 과일만 출력하세요.

* \# 명령어를 작성하세요
cat fruits.txt | sort | uniq


**3-2.** `operating_systems.txt` 파일에서 각 운영체제가 몇 번씩 나타나는지 개수와 함께 출력하세요.

* \# 명령어를 작성하세요
cat operating_systems.txt | sort | uniq -c

**3-3.** `fruits.txt` 파일에서 가장 많이 나타나는 과일을 찾으세요.

* \# 명령어를 작성하세요  
cat fruits.txt | sort | uniq -c

  ---

  ## **문제 4: grep 명령어 활용 (중급)**

**4-1.** `system.log` 파일에서 "ERROR"가 포함된 라인만 출력하세요.

* \# 명령어를 작성하세요
cat system.log | grep "ERROR"


**4-2.** `system.log` 파일에서 "ERROR" 또는 "WARNING"이 포함된 라인을 라인 번호와 함께 출력하세요.

* \# 명령어를 작성하세요
grep -Ein "error|warning" system.log


**4-3.** `employees.txt` 파일에서 Seoul에 거주하는 직원의 정보를 출력하세요.

* \# 명령어를 작성하세요
cat employees.txt | grep "Seoul"


**4-4.** 현재 디렉토리의 모든 `.txt` 파일에서 "Linux"라는 단어를 대소문자 구분 없이 검색하세요.

* \# 명령어를 작성하세요  
cat *.txt | grep -i "linux"  

  ---

  ## **문제 5: cut 명령어 활용 (중급)**

**5-1.** `employees.txt` 파일에서 직원 이름(1번째 필드)만 추출하세요.

* \# 명령어를 작성하세요
cat employees.txt | cut -d":" -f1

**5-2.** `employees.txt` 파일에서 도시와 직책(3, 4번째 필드)만 추출하세요.

* \# 명령어를 작성하세요
cat employees.txt | cut -d":" -f3,4

**5-3.** `system.log` 파일에서 시간 부분(두 번째 필드)만 추출하세요.

* \# 명령어를 작성하세요  
cat system.log | cut -d" " -f2

  ---

  ## **문제 6: tr 명령어 활용 (중급)**

**6-1.** "Hello World Linux" 문자열의 모든 대문자를 소문자로 변환하세요.

* \# 명령어를 작성하세요
echo "Hello World Linux" | tr "HWL" "hwl"

**6-2.** `employees.txt` 파일의 콜론(:)을 탭 문자로 변환하세요.

* \# 명령어를 작성하세요
cat employees.txt | tr ":" "\t"

**6-3.** "Linux-System-Administration" 문자열에서 하이픈(-)을 모두 제거하세요.

* \# 명령어를 작성하세요  
echo "Linux-System-Administration" | tr "-" " "

  ---

  ## **문제 7: tail 명령어 활용 (기초)**

**7-1.** `system.log` 파일의 마지막 3줄만 출력하세요.

* \# 명령어를 작성하세요
cat system.log | tail -n 3

**7-2.** `scores.txt` 파일의 마지막 5개 점수를 출력하세요.

* \# 명령어를 작성하세요  
cat scores.txt | tail -n 5

  ---

  ## **문제 8: diff 명령어 활용 (중급)**

먼저 비교할 파일들을 생성하세요:

* echo \-e "apple\\nbanana\\ncherry" \> fruits\_v1.txt  
* echo \-e "apple\\norange\\ncherry\\ngrape" \> fruits\_v2.txt


**8-1.** `fruits_v1.txt`와 `fruits_v2.txt` 파일의 차이점을 확인하세요.

* \# 명령어를 작성하세요
diff fruits_v1.txt fruits_v2.txt

**8-2.** 두 파일의 차이점을 unified format으로 출력하세요.

* \# 명령어를 작성하세요  
diff fruits_v1.txt fruits_v2.txt -u

  ---
 *필수
  ## **문제 9: 파이프라인 활용 (고급)**

**9-1.** `employees.txt` 파일에서 Seoul에 거주하는 직원의 이름만 추출하세요.

* \# 명령어를 작성하세요
grep "Seoul" employees.txt | cut -d":" -f1

**9-2.** `system.log` 파일에서 에러와 경고 메시지의 총 개수를 확인하세요.

* \# 명령어를 작성하세요
sort -k3  system.log|cut -d" " -f3 | uniq -c

**9-3.** `scores.txt` 파일에서 150점 이상인 점수의 개수를 확인하세요.
 -- 제외
* \# 명령어를 작성하세요
??

**9-4.** `employees.txt` 파일에서 나이를 기준으로 정렬한 후 가장 나이가 많은 직원의 이름을 출력하세요.

* \# 명령어를 작성하세요  
sort -t":" -k2 -r employees.txt | head -n 1 | cut -d":" -f1  

  ---
 *필수
  ## **문제 10: 리다이렉션 활용 (중급)**

**10-1.** `fruits.txt` 파일을 알파벳 역순으로 정렬하여 `fruits_reverse.txt` 파일에 저장하세요.

* \# 명령어를 작성하세요
fruits_reverse.txt 

**10-2.** `employees.txt` 파일에서 Seoul 거주자 정보를 `seoul_employees.txt` 파일에 저장하세요.

* \# 명령어를 작성하세요
grep "Seoul" employees.txt > seoul_employees.txt


**10-3.** `system.log` 파일의 에러 메시지만 추출하여 `errors.txt` 파일에 저장하세요.

* \# 명령어를 작성하세요  
grep -i "error"  system.log > errors.txt

  ---
 *필수
  ## **문제 11: 종합 문제 (고급)**

**11-1.** `employees.txt` 파일에서 각 도시별 직원 수를 계산하여 많은 순서대로 출력하세요.

* \# 명령어를 작성하세요
sort -t":" -k3 employees.txt |cut -d":" -f3 |uniq -c| sort -n -r

**11-2.** `system.log` 파일에서 시간대별(시간 단위) 로그 개수를 계산하세요.

* \# 명령어를 작성하세요
cat system.log | cut -d" " -f2 | cut -d":" -f1|uniq -c


**11-3.** `scores.txt` 파일에서 100점 이상인 점수들만 추출하여 평균을 구하세요. (hint: `bc` 명령어 사용)
-- 문제 제외
* \# 명령어를 작성하세요


**11-4.** 모든 `.txt` 파일에서 가장 많이 사용된 단어 상위 5개를 찾으세요.

* \# 명령어를 작성하세요  
cat *.txt| sort | uniq -c | sort -n -k1 | tail -n 5

  ---

  ## **문제 12: 실무 시나리오 (최고급)**

다음 실무 상황을 가정하고 명령어를 작성하세요:

**12-1.** 웹 서버 접속 로그 분석

* \# 가상의 웹 로그 파일 생성  
* echo \-e "192.168.1.10 \- \- \[15/Jan/2024:10:30:00\] GET /index.html 200\\n192.168.1.20 \- \- \[15/Jan/2024:10:31:00\] POST /login 200\\n192.168.1.10 \- \- \[15/Jan/2024:10:32:00\] GET /about.html 404\\n192.168.1.30 \- \- \[15/Jan/2024:10:33:00\] GET /index.html 200\\n192.168.1.10 \- \- \[15/Jan/2024:10:34:00\] GET /contact.html 200" \> access.log  
*   
* \# 가장 많이 접속한 IP 주소를 찾으세요  
* \# 명령어를 작성하세요
cat access.log | sort -t" " -k1 | cut -d" " -f1|uniq -c|head -n 1

**12-2.** 시스템 사용자 분석

* \# /etc/passwd 파일에서 실제 사용자(홈 디렉토리가 /home으로 시작)만 추출하여 사용자명 순으로 정렬하세요  
* \# 명령어를 작성하세요
cat /etc/passwd | grep "/home" | sort -t":" -k1

**12-3.** 설정 파일 백업 및 비교

* \# employees.txt 파일을 백업하고, 원본에서 한 줄을 수정한 후 차이점을 확인하세요  
* \# 명령어들을 순서대로 작성하세요  
cp employees.txt employees_bak.txt
echo " Add Line " >> employees.txt
diff employees.txt employees_bak.txt

  ---

