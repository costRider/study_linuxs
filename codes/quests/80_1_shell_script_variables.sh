#!/bin/bash

###################
#
# 2025.07.23 Study _code
#
# - mk lee
#
# 파일명과 내용을 입력 받아서 현재 디렉토리에 파일을 생성하는 코드
#
###################

v_var1="$1"
v_var2="$2"

if [ -z "$v_var1" ] || [ -z "$v_var2" ]; then
    echo " 파일명 또는 파일내용이 누락되었습니다."
else
    echo "$v_var2" > "$v_var1"
    echo " $v_var1 파일이 생성되었습니다."
fi
