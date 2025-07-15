####################################
#   2025.07.15 linux_20250715.sh - 이민규
#   수업 실습 정리
#   linux 명령어를 powershell 에서 연습#
#
#   cd - changeDirectory
#   pwd - printworkingdirectory
#   ls - list
#######################################

cd C:\
cd C:\Develops\
pwd
ls

###################### 결과 값

PS C:\Develops> cd C:\
PS C:\> cd C:\Develops\
PS C:\Develops> pwd

Path
----
C:\Develops


PS C:\Develops> ls


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15   오전 9:02                VMs

#####################
## 파일, 폴더 생성 삭제 
###################
#
#   mkdir - 폴더 생성
#   
########################


PS C:\Develops> mkdir temp_dir


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:26                temp_dir

################################################
#   new-item 파일 생성
################################################
PS C:\Develops> ls


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15   오후 2:26                temp_dir
d-----      2025-07-15   오전 9:02                VMs



PS C:\Develops> cd .\temp_dir\
PS C:\Develops\temp_dir> ls
PS C:\Develops\temp_dir> new-item file_first.txt


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 2:27              0 file_first.txt

################################################################

