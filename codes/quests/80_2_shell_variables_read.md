"인자와 read를 함께 사용하여 변수 조합 출력

~$ 80_2_shell_variables_read.sh agument_first
 read input : read_first

input values : agument_first read_first"

```shell
#!/bin/bash

###################
#
#2025.07.23 Study _code
#       인자와 read를 echo로 출력하는 코드
#       mk lee
#
######################

read -p  "입력 값:" input

echo "인자 값: $1" "입력 값: $input"

```
