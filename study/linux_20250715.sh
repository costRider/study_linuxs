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
# 삭제 (rm)
##########################################
PS C:\Develops\temp_dir> ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 2:27              0 file_first.txt


PS C:\Develops\temp_dir> rm .\file_first.txt
PS C:\Develops\temp_dir> ls
PS C:\Develops\temp_dir> cd ..
PS C:\Develops> rm .\temp_dir\
PS C:\Develops> ls


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15   오전 9:02                VMs
#######################################################################
# 이동 (move) * 파일명 변경도 가능
##################################

PS C:\Develops> move .\new_file2.txt .\dir_first\new_file.txt
PS C:\Develops> ls


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:45                dir_first
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15   오전 9:02                VMs

#################################################
# 목록(tree)
#######################################
PS C:\Develops\dir_first> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
└─folder
##############################################
# file 생성 
###############################################

"hello" > file.txt




