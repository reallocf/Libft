# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    robotest.sh                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: csummers <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/01 19:26:13 by csummers          #+#    #+#              #
#    Updated: 2016/11/01 19:26:14 by csummers         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo "Which function would you like to test?"
read TARGET

case $TARGET in

	"all")
		echo "ft_memset" | sh robotest.sh
		echo
		echo
		echo "ft_bzero" | sh robotest.sh
		echo
		echo
		echo "ft_memcpy" | sh robotest.sh
		echo
		echo
		echo "ft_memccpy" | sh robotest.sh
		echo
		echo
		echo "ft_memmove" | sh robotest.sh
		echo
		echo
		echo "ft_memchr" | sh robotest.sh
		echo
		echo
		echo "ft_memcmp" | sh robotest.sh
		echo
		echo
		echo "ft_strlen" | sh robotest.sh
		echo
		echo
		echo "ft_strdup" | sh robotest.sh
		echo
		echo
		echo "ft_strcpy" | sh robotest.sh
		echo
		echo
		echo "ft_strncpy" | sh robotest.sh
		echo
		echo
		echo "ft_strcat" | sh robotest.sh
		echo
		echo
		echo "ft_strncat" | sh robotest.sh
		echo
		echo
		echo "ft_strlcat" | sh robotest.sh
		echo
		echo
		echo "ft_strchr" | sh robotest.sh
		echo
		echo
		echo "ft_strrchr" | sh robotest.sh
		echo
		echo
		echo "ft_strstr" | sh robotest.sh
		echo
		echo
		echo "ft_strnstr" | sh robotest.sh
		echo
		echo
		echo "ft_strcmp" | sh robotest.sh
		echo
		echo
		echo "ft_strncmp" | sh robotest.sh
		echo
		echo
		echo "ft_atoi" | sh robotest.sh
		echo
		echo
		echo "ft_isalpha" | sh robotest.sh
		echo
		echo
		echo "ft_isdigit" | sh robotest.sh
		echo
		echo
		echo "ft_isalnum" | sh robotest.sh
		echo
		echo
		echo "ft_isascii" | sh robotest.sh
		echo
		echo
		echo "ft_isprint" | sh robotest.sh
		echo
		echo
		echo "ft_toupper" | sh robotest.sh
		echo
		echo
		echo "ft_memalloc" | sh robotest.sh
		echo
		echo
		echo "ft_memdel" | sh robotest.sh
		echo
		echo
		echo "ft_strnew" | sh robotest.sh
		echo
		echo
		echo "ft_strdel" | sh robotest.sh
		echo
		echo
		echo "ft_strclr" | sh robotest.sh
		echo
		echo
		echo "ft_striter" | sh robotest.sh
		echo
		echo
		echo "ft_striteri" | sh robotest.sh
		echo
		echo
		echo "ft_strmap" | sh robotest.sh
		echo
		echo
		echo "ft_strmapi" | sh robotest.sh
		echo
		echo
		echo "ft_strequ" | sh robotest.sh
		echo
		echo
		echo "ft_strnequ" | sh robotest.sh
		echo
		echo
		echo "ft_strsub" | sh robotest.sh
		echo
		echo
		echo "ft_strtrim" | sh robotest.sh
		echo
		echo
		echo "ft_strsplit" | sh robotest.sh
		echo
		echo
		echo "ft_itoa" | sh robotest.sh
		echo
		echo
		echo "ft_putchar" | sh robotest.sh
		echo
		echo
		echo "ft_putstr" | sh robotest.sh
		echo
		echo
		echo "ft_putendl" | sh robotest.sh
		echo
		echo
		echo "ft_putnbr" | sh robotest.sh
		echo
		echo
		echo "ft_putchar_fd" | sh robotest.sh
		echo
		echo
		echo "ft_putstr_fd" | sh robotest.sh
		echo
		echo
		echo "ft_putendl_fd" | sh robotest.sh
		echo
		echo
		echo "ft_putnbr_fd" | sh robotest.sh
		echo
		echo
		echo "ft_lstnew" | sh robotest.sh
		echo
		echo
		echo "ft_lstdelone" | sh robotest.sh
		echo
		echo
		echo "ft_lstadd" | sh robotest.sh
		echo
		echo
		echo "ft_lstiter" | sh robotest.sh
		echo
		echo
		echo "ft_lstmap" | sh robotest.sh
		echo;;

	# Part 1
	"ft_memset"|"memset")
		echo "Testing ft_memset(\"This is my memset function\", '$', 7)"
		echo "String.h result:"
		./tester memset "This is my memset function" '$' 7
		echo
		echo "My result:"
		./tester ft_memset "This is my memset function" '$' 7
		echo
		echo
		echo "Testing ft_memset(\"Lolol this ish cool\", '0', 0)"
		echo "String.h result:"
		./tester memset "Lolol this ish cool" '0' 0
		echo
		echo "My result:"
		./tester ft_memset "Lolol this ish cool" '0' 0
		echo
		echo
		echo "Testing ft_memset(\"Too kool 4 skool\", 'F', 20)"
		echo "String.h result:"
		./tester memset "Too kool 4 skool" 'F' 20
		echo
		echo "My result:"
		./tester ft_memset "Too kool 4 skool" 'F' 20
		echo;;

	"ft_bzero" | "bzero")
		echo "Testing ft_bzero(\"test1\", 0)"
		echo "Strings.h result:"
		./tester bzero test1 0
		echo
		echo "My result:"
		./tester ft_bzero test1 0
		echo
		echo
		echo "Testing ft_bzero(\"test2\", 1)"
		echo "Strings.h result:"
		./tester bzero test2 1
		echo
		echo "My result:"
		./tester ft_bzero test2 1
		echo
		echo
		echo "Testing ft_bzero(\"test3\", 5)"
		echo "Strings.h result:"
		./tester bzero test3 5
		echo
		echo "My result:"
		./tester ft_bzero test3 5
		echo;;

	"ft_memcpy" | "memcpy")
		echo "Testing ft_memcpy(\"test1\", \"abcdef\", 3)"
		echo "String.h result:"
		./tester memcpy test1 abcdef 3
		echo
		echo "My result:"
		./tester ft_memcpy test1 abcdef 3
		echo
		echo
		echo "Testing ft_memcpy(\"test2\", \"ghijkl\", 10)"
		echo "String.h result:"
		./tester memcpy test2 ghijkl 10
		echo
		echo "My result:"
		./tester ft_memcpy test2 ghijkl 10
		echo
		echo
		echo "Testing ft_memcpy(\"test3\", \"yes\", 0)"
		echo "String.h result:"
		./tester memcpy test3 yes 0
		echo
		echo "My result:"
		./tester ft_memcpy test3 yes 0
		echo;;

	"ft_memccpy" | "memccpy")
		echo "Testing ft_memccpy(\"test1\", \"abcdef\", 'j', 3)"
		echo "String.h result:"
		./tester memccpy test1 abcdef j 3
		echo
		echo "My result:"
		./tester ft_memccpy test1 abcdef j 3
		echo
		echo
		echo "Testing ft_memccpy(\"test2\", \"ghijkl\", 'i', 10)"
		echo "String.h result:"
		./tester memccpy test2 ghijkl i 10
		echo
		echo "My result:"
		./tester ft_memccpy test2 ghijkl i 10
		echo
		echo
		echo "Testing ft_memccpy(\"test3\", \"yes\", 't', 0)"
		echo "String.h result:"
		./tester memccpy test3 yes t 0
		echo
		echo "My result:"
		./tester ft_memccpy test3 yes t 0
		echo;;

	"ft_memmove" | "memmove")
		echo "Testing ft_memmove < (\"test1\", \"abcdef\", 3)"
		echo "String.h result:"
		./tester "memmove <" test1 abcdef 3
		echo
		echo "My result:"
		./tester "ft_memmove <" test1 abcdef 3
		echo
		echo
		echo "Testing ft_memmove < (\"test2\", \"ghijkl\", 10)"
		echo "String.h result:"
		./tester "memmove <" test2 ghijkl 10
		echo
		echo "My result:"
		./tester "ft_memmove <" test2 ghijkl 10
		echo
		echo
		echo "Testing ft_memmove < (\"test3\", \"yes\", 0)"
		echo "String.h result:"
		./tester "memmove <" test3 yes 0
		echo
		echo "My result:"
		./tester "ft_memmove <" test3 yes 0
		echo
		echo
		echo "Testing ft_memmove > (\"test1\", \"abcdef\", 6)"
		echo "String.h result:"
		./tester "memmove >" test1 abcdef 3
		echo
		echo "My result:"
		./tester "ft_memmove >" test1 abcdef 3
		echo
		echo
		echo "Testing ft_memmove > (\"test3\", \"yes\", 3)"
		echo "String.h result:"
		./tester "memmove >" test3 yes 0
		echo
		echo "My result:"
		./tester "ft_memmove >" test3 yes 0
		echo;;

	"ft_memchr" | "memchr")
		echo "Testing ft_memchr(\"test1\", 's', 5)"
		echo "String.h result:"
		./tester memchr test1 s 5
		echo
		echo "My result:"
		./tester ft_memchr test1 s 5
		echo
		echo
		echo "Testing ft_memchr(\"test2\", 'j', 3)"
		echo "String.h result:"
		./tester memchr test2 j 3
		echo
		echo "My result:"
		./tester ft_memchr test2 j 3
		echo
		echo
		echo "Testing ft_memchr(\"test3\", 's', 1)"
		echo "String.h result:"
		./tester memchr test3 s 1
		echo
		echo "My result:"
		./tester ft_memchr test3 s 1
		echo;;

	"ft_memcmp" | "memcmp")
		echo "Testing ft_memcmp(\"test1\", \"test1\", 5)"
		echo "String.h result:"
		./tester memcmp test1 test1 5
		echo
		echo "My result:"
		./tester ft_memcmp test1 test1 5
		echo
		echo
		echo "Testing ft_memcmp(\"test2\", \"tert2\", 5)"
		echo "String.h result:"
		./tester memcmp test2 tert2 5
		echo
		echo "My result:"
		./tester ft_memcmp test2 tert2 5
		echo
		echo
		echo "Testing ft_memcmp(\"test3\", \"tert3\", 2)"
		echo "String.h result:"
		./tester memcmp test3 tert3 2
		echo
		echo "My result:"
		./tester ft_memcmp test3 tert3 2
		echo
		echo
		echo "Testing ft_memcmp(\"test4\", \"tert4\", 10)"
		echo "String.h result:"
		./tester memcmp test4 tert4 10
		echo
		echo "My result:"
		./tester ft_memcmp test4 tert4 10
		echo;;

	"ft_strlen" | "strlen")
		echo "Testing ft_strlen(\"test1\")"
		echo "String.h result:"
		./tester strlen test1
		echo
		echo "My result:"
		./tester ft_strlen test1
		echo
		echo
		echo "Testing ft_strlen(\"\")"
		echo "String.h result:"
		./tester strlen ""
		echo
		echo "My result:"
		./tester ft_strlen ""
		echo
		echo
		echo "Testing ft_strlen(\"test333333333333333\")"
		echo "String.h result:"
		./tester strlen test333333333333333
		echo
		echo "My result:"
		./tester ft_strlen test333333333333333
		echo;;

	"ft_strdup" | "strdup")
		echo "Testing ft_strdup(\"test1\")"
		echo "String.h result:"
		./tester strdup test1
		echo
		echo "My result:"
		./tester ft_strdup test1
		echo
		echo
		echo "Testing ft_strdup(\"\")"
		echo "String.h result:"
		./tester strdup ""
		echo
		echo "My result:"
		./tester ft_strdup ""
		echo
		echo
		echo "Testing ft_strdup(\"test333333333333333\")"
		echo "String.h result:"
		./tester strdup test333333333333333
		echo
		echo "My result:"
		./tester ft_strdup test333333333333333
		echo;;

	"ft_strcpy" | "strcpy")
		echo "Testing ft_strcpy(\"lololol\", \"test1\")"
		echo "String.h result:"
		./tester strcpy lololol test1
		echo
		echo "My result:"
		./tester ft_strcpy lololol test1
		echo
		echo
		echo "Testing ft_strcpy(\"test2\", \"\")"
		echo "String.h result:"
		./tester strcpy test2 ""
		echo
		echo "My result:"
		./tester ft_strcpy test2 ""
		echo
		echo
		echo "Testing ft_strcpy(\"test333\", \"test3\")"
		echo "String.h result:"
		./tester strcpy test333 test3
		echo
		echo "My result:"
		./tester ft_strcpy test333 test3
		echo;;

	"ft_strncpy" | "strncpy")
		echo "Testing ft_strncpy(\"lololol\", \"test1\", 3)"
		echo "String.h result:"
		./tester strncpy lololol test1 3
		echo
		echo "My result:"
		./tester ft_strncpy lololol test1 3
		echo
		echo
		echo "Testing ft_strncpy(\"test2\", \"\", 0)"
		echo "String.h result:"
		./tester strncpy test2 "" 0
		echo
		echo "My result:"
		./tester ft_strncpy test2 "" 0
		echo
		echo
		echo "Testing ft_strncpy(\"test333\", \"test3\", 10)"
		echo "String.h result:"
		./tester strncpy test333 test3 10
		echo
		echo "My result:"
		./tester ft_strncpy test333 test3 10
		echo;;

	"ft_strcat" | "strcat")
		echo "Testing ft_strcat(\"lololol\", \"test1\")"
		echo "String.h result:"
		./tester strcat lololol test1
		echo
		echo "My result:"
		./tester ft_strcat lololol test1
		echo
		echo
		echo "Testing ft_strcat(\"test2\", \"\")"
		echo "String.h result:"
		./tester strcat test2 ""
		echo
		echo "My result:"
		./tester ft_strcat test2 ""
		echo
		echo
		echo "Testing ft_strcat(\"test333\", \"test3\")"
		echo "String.h result:"
		./tester strcat test333 test3
		echo
		echo "My result:"
		./tester ft_strcat test333 test3
		echo;;

	"ft_strncat" | "strncat")
		echo "Testing ft_strncat(\"lololol\", \"test1\", 3)"
		echo "String.h result:"
		./tester strncat lololol test1 3
		echo
		echo "My result:"
		./tester ft_strncat lololol test1 3
		echo
		echo
		echo "Testing ft_strncat(\"test2\", \"\", 0)"
		echo "String.h result:"
		./tester strncat test2 "" 0
		echo
		echo "My result:"
		./tester ft_strncat test2 "" 0
		echo
		echo
		echo "Testing ft_strncat(\"test333\", \"test3\", 10)"
		echo "String.h result:"
		./tester strncat test333 test3 10
		echo
		echo "My result:"
		./tester ft_strncat test333 test3 10
		echo;;

	"ft_strlcat" | "strlcat")
		echo "Testing ft_strlcat(\"lololol\", \"test1\", 3)"
		echo "String.h result:"
		./tester strlcat lololol test1 3
		echo
		echo "My result:"
		./tester ft_strlcat lololol test1 3
		echo
		echo
		echo "Testing ft_strlcat(\"test2\", \"\", 100)"
		echo "String.h result:"
		./tester strlcat test2 "" 0
		echo
		echo "My result:"
		./tester ft_strlcat test2 "" 0
		echo
		echo
		echo "Testing ft_strlcat(\"test3\", \"again\", 0)"
		echo "String.h result:"
		./tester strlcat test3 "" 0
		echo
		echo "My result:"
		./tester ft_strlcat test3 "" 0
		echo
		echo
		echo "Testing ft_strlcat(\"\", \"test4\", 5)"
		echo "String.h result:"
		./tester strlcat "" test4 5
		echo
		echo "My result:"
		./tester ft_strlcat "" test4 5
		echo
		echo
		echo "Testing ft_strlcat(\"test5\", \"test5\", 1000)"
		echo "String.h result:"
		./tester strlcat test5 test5 1000
		echo
		echo "My result:"
		./tester ft_strlcat test5 test5 1000
		echo;;

	"ft_strchr" | "strchr")
		echo "Testing ft_strchr(\"test1\", 's')"
		echo "String.h result:"
		./tester strchr test1 s
		echo
		echo "My result:"
		./tester ft_strchr test1 s
		echo
		echo
		echo "Testing ft_strchr(\"test2\", 'j')"
		echo "String.h result:"
		./tester strchr test2 j
		echo
		echo "My result:"
		./tester ft_strchr test2 j
		echo
		echo
		echo "Testing ft_strchr(\"test3\", 't')"
		echo "String.h result:"
		./tester strchr test3 t
		echo
		echo "My result:"
		./tester ft_strchr test3 t
		echo;;

	"ft_strrchr" | "strrchr")
		echo "Testing ft_strrchr(\"test1\", 's')"
		echo "String.h result:"
		./tester strrchr test1 s
		echo
		echo "My result:"
		./tester ft_strrchr test1 s
		echo
		echo
		echo "Testing ft_strrchr(\"test2\", 'j')"
		echo "String.h result:"
		./tester strrchr test2 j
		echo
		echo "My result:"
		./tester ft_strrchr test2 j
		echo
		echo
		echo "Testing ft_strrchr(\"test3\", 't')"
		echo "String.h result:"
		./tester strrchr test3 t
		echo
		echo "My result:"
		./tester ft_strrchr test3 t
		echo;;

	"ft_strstr" | "strstr")
		echo "Testing ft_strstr(\"test1\", \"est\")"
		echo "String.h result:"
		./tester strstr test1 est
		echo
		echo "My result:"
		./tester ft_strstr test1 est
		echo
		echo
		echo "Testing ft_strstr(\"test2\", \"est\")"
		echo "String.h result:"
		./tester strstr test2 est
		echo
		echo "My result:"
		./tester ft_strstr test2 est
		echo
		echo
		echo "Testing ft_strstr(\"testestest3\", \"est\")"
		echo "String.h result:"
		./tester strstr testestest3 est
		echo
		echo "My result:"
		./tester ft_strstr testestest3 est
		echo
		echo
		echo "Testing ft_strstr(\"test4\", \"est4a\")"
		echo "String.h result:"
		./tester strstr test4 est4a
		echo
		echo "My result:"
		./tester ft_strstr test4 est4a
		echo
		echo
		echo "Testing ft_strstr(\"test5\", \"\")"
		echo "String.h result:"
		./tester strstr test5 ""
		echo
		echo "My result:"
		./tester ft_strstr test5 ""
		echo;;

	"ft_strnstr" | "strnstr")
		echo "Testing ft_strnstr(\"test1\", \"est\", 10)"
		echo "String.h result:"
		./tester strnstr test1 est 10
		echo
		echo "My result:"
		./tester ft_strnstr test1 est 10
		echo
		echo
		echo "Testing ft_strnstr(\"test2\", \"est\", 1)"
		echo "String.h result:"
		./tester strnstr test2 est 1
		echo
		echo "My result:"
		./tester ft_strnstr test2 est 1
		echo
		echo
		echo "Testing ft_strnstr(\"testestest3\", \"est\", 20)"
		echo "String.h result:"
		./tester strnstr testestest3 est 20
		echo
		echo "My result:"
		./tester ft_strnstr testestest3 est 20
		echo
		echo
		echo "Testing ft_strnstr(\"test4\", \"est4a\", 20)"
		echo "String.h result:"
		./tester strnstr test4 est4a 20
		echo
		echo "My result:"
		./tester ft_strnstr test4 est4a 20
		echo
		echo
		echo "Testing ft_strnstr(\"test5\", \"est\", 0)"
		echo "String.h result:"
		./tester strnstr test5 est 0
		echo
		echo "My result:"
		./tester ft_strnstr test5 est 0
		echo
		echo
		echo "Testing ft_strnstr(\"test6\", \"est\", -20)"
		echo "String.h result:"
		./tester strnstr test6 est -20
		echo
		echo "My result:"
		./tester ft_strnstr test6 est -20
		echo
		echo
		echo "Testing ft_strnstr(\"test7\", \"\", 3)"
		echo "String.h result:"
		./tester strnstr test7 "" 3
		echo
		echo "My result:"
		./tester ft_strnstr test7 "" 3
		echo;;

	"ft_strcmp" | "strcmp")
		echo "Testing ft_strcmp(\"test1\", \"test1\")"
		echo "String.h result:"
		./tester strcmp test1 test1
		echo
		echo "My result:"
		./tester ft_strcmp test1 test1
		echo
		echo
		echo "Testing ft_strcmp(\"test2\", \"tert2\")"
		echo "String.h result:"
		./tester strcmp test2 tert2
		echo
		echo "My result:"
		./tester ft_strcmp test2 tert2
		echo
		echo
		echo "Testing ft_strcmp(\"test3\", \"tert3\")"
		echo "String.h result:"
		./tester strcmp test3 tert3
		echo
		echo "My result:"
		./tester ft_strcmp test3 tert3
		echo
		echo
		echo "Testing ft_strcmp(\"test4\", \"tert4\")"
		echo "String.h result:"
		./tester strcmp test4 tert4
		echo
		echo "My result:"
		./tester ft_strcmp test4 tert4
		echo;;

	"ft_strncmp" | "strncmp")
		echo "Testing ft_strncmp(\"test1\", \"test1\", 5)"
		echo "String.h result:"
		./tester strncmp test1 test1 5
		echo
		echo "My result:"
		./tester ft_strncmp test1 test1 5
		echo
		echo
		echo "Testing ft_strncmp(\"test2\", \"tert2\", 5)"
		echo "String.h result:"
		./tester strncmp test2 tert2 5
		echo
		echo "My result:"
		./tester ft_strncmp test2 tert2 5
		echo
		echo
		echo "Testing ft_strncmp(\"test3\", \"tert3\", 2)"
		echo "String.h result:"
		./tester strncmp test3 tert3 2
		echo
		echo "My result:"
		./tester ft_strncmp test3 tert3 2
		echo
		echo
		echo "Testing ft_strncmp(\"test4\", \"tert4\", 10)"
		echo "String.h result:"
		./tester strncmp test4 tert4 10
		echo
		echo "My result:"
		./tester ft_strncmp test4 tert4 10
		echo;;

	"ft_atoi"|"atoi")
		echo "Testing ft_atoi(\"zxy\")"
		echo "Stdlib.h result:"
		./tester atoi zxy
		echo
		echo "My result:"
		./tester ft_atoi zxy
		echo
		echo
		echo "Testing ft_atoi(\"   lmno\")"
		echo "Stdlib.h result:"
		./tester atoi "   lmno"
		echo
		echo "My result:"
		./tester ft_atoi "   lmno"
		echo
		echo
		echo "Testing ft_atoi(\"   1\")"
		echo "Stdlib.h result:"
		./tester atoi "   1"
		echo
		echo "My result:"
		./tester ft_atoi "   1"
		echo
		echo
		echo "Testing ft_atoi(\"-1abcde\")"
		echo "Stdlib.h result:"
		./tester atoi -1abcde
		echo
		echo "My result:"
		./tester ft_atoi -1abcde
		echo
		echo
		echo "Testing ft_atoi(\"0\")"
		echo "Stdlib.h result:"
		./tester atoi 0
		echo
		echo "My result:"
		./tester ft_atoi 0
		echo
		echo
		echo "Testing ft_atoi(\"+10\")"
		echo "Stdlib.h result:"
		./tester atoi "+10"
		echo
		echo "My result:"
		./tester ft_atoi "+10"
		echo
		echo
		echo "Testing ft_atoi(\"-42\")"
		echo "Stdlib.h result:"
		./tester atoi -42
		echo
		echo "My result:"
		./tester ft_atoi -42
		echo
		echo
		echo "Testing ft_atoi(\"2147483647\")"
		echo "Stdlib.h result:"
		./tester atoi 2147483647
		echo
		echo "My result:"
		./tester ft_atoi 2147483647
		echo
		echo
		echo "Testing ft_atoi(\"-2147483648\")"
		echo "Stdlib.h result:"
		./tester atoi -2147483648
		echo
		echo "My result:"
		./tester ft_atoi -2147483648
		echo
		echo
		echo "Testing ft_atoi(\"100000000000000\")"
		echo "Stdlib.h result:"
		./tester atoi 100000000000000
		echo
		echo "My result:"
		./tester ft_atoi 100000000000000
		echo
		echo
		echo "Testing ft_atoi(\"-100000000000000000000\")"
		echo "Stdlib.h result:"
		./tester atoi -100000000000000000000
		echo
		echo "My result:"
		./tester ft_atoi -100000000000000000000
		echo
		echo
		echo "Testing ft_atoi(\"100000000000000000000\")"
		echo "Stdlib.h result:"
		./tester atoi 100000000000000000000
		echo
		echo "My result:"
		./tester ft_atoi 100000000000000000000
		echo;;

	"ft_isalpha" | "isalpha")
		echo "Testing ft_isalpha('1')"
		echo "Ctype.h result:"
		./tester isalpha 1
		echo
		echo "My result:"
		./tester ft_isalpha 1
		echo
		echo
		echo "Testing ft_isalpha(' ')"
		echo "Ctype.h result:"
		./tester isalpha ' '
		echo
		echo "My result:"
		./tester ft_isalpha ' '
		echo
		echo
		echo "Testing ft_isalpha('a')"
		echo "Ctype.h result:"
		./tester isalpha a
		echo
		echo "My result:"
		./tester ft_isalpha a
		echo
		echo
		echo "Testing ft_isalpha('&')"
		echo "Ctype.h result:"
		./tester isalpha '&'
		echo
		echo "My result:"
		./tester ft_isalpha '&'
		echo
		echo
		echo "Testing ft_isalpha('	')"
		echo "Ctype.h result:"
		./tester isalpha '	'
		echo
		echo "My result:"
		./tester ft_isalpha '	'
		echo;;

	"ft_isdigit" | "isdigit")
		echo "Testing ft_isdigit('1')"
		echo "Ctype.h result:"
		./tester isdigit 1
		echo
		echo "My result:"
		./tester ft_isdigit 1
		echo
		echo
		echo "Testing ft_isdigit(' ')"
		echo "Ctype.h result:"
		./tester isdigit ' '
		echo
		echo "My result:"
		./tester ft_isdigit ' '
		echo
		echo
		echo "Testing ft_isdigit('a')"
		echo "Ctype.h result:"
		./tester isdigit a
		echo
		echo "My result:"
		./tester ft_isdigit a
		echo
		echo
		echo "Testing ft_isdigit('&')"
		echo "Ctype.h result:"
		./tester isdigit '&'
		echo
		echo "My result:"
		./tester ft_isdigit '&'
		echo
		echo
		echo "Testing ft_isdigit('	')"
		echo "Ctype.h result:"
		./tester isdigit '	'
		echo
		echo "My result:"
		./tester ft_isdigit '	'
		echo;;

	"ft_isalnum" | "isalnum")
		echo "Testing ft_isalnum('1')"
		echo "Ctype.h result:"
		./tester isalnum 1
		echo
		echo "My result:"
		./tester ft_isalnum 1
		echo
		echo
		echo "Testing ft_isalnum(' ')"
		echo "Ctype.h result:"
		./tester isalnum ' '
		echo
		echo "My result:"
		./tester ft_isalnum ' '
		echo
		echo
		echo "Testing ft_isalnum('a')"
		echo "Ctype.h result:"
		./tester isalnum a
		echo
		echo "My result:"
		./tester ft_isalnum a
		echo
		echo
		echo "Testing ft_isalnum('&')"
		echo "Ctype.h result:"
		./tester isalnum '&'
		echo
		echo "My result:"
		./tester ft_isalnum '&'
		echo
		echo
		echo "Testing ft_isalnum('	')"
		echo "Ctype.h result:"
		./tester isalnum '	'
		echo
		echo "My result:"
		./tester ft_isalnum '	'
		echo;;

	"ft_isascii" | "isascii")
		echo "Testing ft_isascii('1')"
		echo "Ctype.h result:"
		./tester isascii 1
		echo
		echo "My result:"
		./tester ft_isascii 1
		echo
		echo
		echo "Testing ft_isascii(' ')"
		echo "Ctype.h result:"
		./tester isascii ' '
		echo
		echo "My result:"
		./tester ft_isascii ' '
		echo
		echo
		echo "Testing ft_isascii('a')"
		echo "Ctype.h result:"
		./tester isascii a
		echo
		echo "My result:"
		./tester ft_isascii a
		echo
		echo
		echo "Testing ft_isascii('&')"
		echo "Ctype.h result:"
		./tester isascii '&'
		echo
		echo "My result:"
		./tester ft_isascii '&'
		echo
		echo
		echo "Testing ft_isascii('	')"
		echo "Ctype.h result:"
		./tester isascii '	'
		echo
		echo "My result:"
		./tester ft_isascii '	'
		echo;;

	"ft_isprint" | "isprint")
		echo "Testing ft_isprint('1')"
		echo "Ctype.h result:"
		./tester isprint 1
		echo
		echo "My result:"
		./tester ft_isprint 1
		echo
		echo
		echo "Testing ft_isprint(' ')"
		echo "Ctype.h result:"
		./tester isprint ' '
		echo
		echo "My result:"
		./tester ft_isprint ' '
		echo
		echo
		echo "Testing ft_isprint('a')"
		echo "Ctype.h result:"
		./tester isprint a
		echo
		echo "My result:"
		./tester ft_isprint a
		echo
		echo
		echo "Testing ft_isprint('&')"
		echo "Ctype.h result:"
		./tester isprint '&'
		echo
		echo "My result:"
		./tester ft_isprint '&'
		echo
		echo
		echo "Testing ft_isprint(\"	\")"
		echo "Ctype.h result:"
		./tester isprint '	'
		echo
		echo "My result:"
		./tester ft_isprint '	'
		echo;;

	"ft_toupper" | "toupper")
		echo "Testing ft_toupper('1')"
		echo "Ctype.h result:"
		./tester toupper 1
		echo
		echo "My result:"
		./tester ft_toupper 1
		echo
		echo
		echo "Testing ft_toupper(' ')"
		echo "Ctype.h result:"
		./tester toupper ' '
		echo
		echo "My result:"
		./tester ft_toupper ' '
		echo
		echo
		echo "Testing ft_toupper('a')"
		echo "Ctype.h result:"
		./tester toupper a
		echo
		echo "My result:"
		./tester ft_toupper a
		echo
		echo
		echo "Testing ft_toupper('&')"
		echo "Ctype.h result:"
		./tester toupper '&'
		echo
		echo "My result:"
		./tester ft_toupper '&'
		echo
		echo
		echo "Testing ft_toupper(\"B\")"
		echo "Ctype.h result:"
		./tester toupper 'B'
		echo
		echo "My result:"
		./tester ft_toupper 'B'
		echo;;

	"ft_tolower" | "tolower")
		echo "Testing ft_tolower('1')"
		echo "Ctype.h result:"
		./tester tolower 1
		echo
		echo "My result:"
		./tester ft_tolower 1
		echo
		echo
		echo "Testing ft_tolower(' ')"
		echo "Ctype.h result:"
		./tester tolower ' '
		echo
		echo "My result:"
		./tester ft_tolower ' '
		echo
		echo
		echo "Testing ft_tolower('a')"
		echo "Ctype.h result:"
		./tester tolower a
		echo
		echo "My result:"
		./tester ft_tolower a
		echo
		echo
		echo "Testing ft_tolower('&')"
		echo "Ctype.h result:"
		./tester tolower '&'
		echo
		echo "My result:"
		./tester ft_tolower '&'
		echo
		echo
		echo "Testing ft_tolower(\"B\")"
		echo "Ctype.h result:"
		./tester tolower 'B'
		echo
		echo "My result:"
		./tester ft_tolower 'B'
		echo;;

	# Part 2

	"ft_memalloc" | "memalloc")
		echo "Testing ft_memalloc(0)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memalloc 0
		echo
		echo
		echo "Testing ft_memalloc(5)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memalloc 5
		echo
		echo
		echo "Testing ft_memalloc(2048)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memalloc 2048
		echo;;

	"ft_memdel" | "memdel")
		echo "Testing ft_memdel(0)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memdel 0
		echo
		echo
		echo "Testing ft_memdel(5)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memdel 5
		echo
		echo
		echo "Testing ft_memdel(2048)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_memdel 2048
		echo;;

	"ft_strnew" | "strnew")
		echo "Testing ft_strnew(0)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strnew 0
		echo
		echo
		echo "Testing ft_strnew(5)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strnew 5
		echo
		echo
		echo "Testing ft_strnew(2048)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strnew 2048
		echo;;

	"ft_strdel" | "strdel")
		echo "Testing ft_strdel(0)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strdel 0
		echo
		echo
		echo "Testing ft_strdel(5)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strdel 5
		echo
		echo
		echo "Testing ft_strdel(2048)"
		echo "Expected result:"
		echo "success"
		echo "My result:"
		./tester ft_strdel 2048
		echo;;

	"ft_strclr" | "strclr")
		echo "Testing ft_strclr(\"test\")"
		echo "Expected result:"
		echo ""
		echo "My result:"
		./tester ft_strclr test
		echo;;

	"ft_striter" | "striter")
		echo "Testing ft_striter(\"test123\")"
		echo "Expected result:"
		echo "0000000"
		echo "My result:"
		./tester ft_striter test123
		echo;;

	"ft_striteri" | "striteri")
		echo "Testing ft_striteri(\"test123\")"
		echo "Expected result:"
		echo "0123456"
		echo "My result:"
		./tester ft_striteri test123
		echo;;

	"ft_strmap" | "strmap")
		echo "Testing ft_strmap(\"abcde\")"
		echo "Expected result:"
		echo "bcdef"
		echo "My result:"
		./tester ft_strmap abcde
		echo;;

	"ft_strmapi" | "strmapi")
		echo "Testing ft_strmapi(\"abcde\")"
		echo "Expected result:"
		echo "acegi"
		echo "My result:"
		./tester ft_strmapi abcde
		echo;;

	"ft_strequ" | "strequ")
		echo "Testing ft_strequ(\"Test one\", \"Test one\")"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_strequ "Test one" "Test one"
		echo
		echo
		echo "Testing ft_strequ(\"Test two\", \"Test fails\")"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_strequ "Test two" "Test fails"
		echo
		echo
		echo "Testing ft_strequ(\"Test three\", \"\")"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_strequ "Test three" ""
		echo
		echo
		echo "Testing ft_strequ(\"\", \"Test four\")"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_strequ "" "Test four"
		echo;;

	"ft_strnequ" | "strnequ")
		echo "Testing ft_strnequ(\"Test one\", \"Test one\", 100)"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_strnequ "Test one" "Test one" 100
		echo
		echo
		echo "Testing ft_strnequ(\"Test two\", \"Test fails\", 7)"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_strnequ "Test two" "Test fails" 7
		echo
		echo
		echo "Testing ft_strnequ(\"Test three\", \"Test passes\", 4)"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_strnequ "Test three" "Test passes" 4
		echo
		echo
		echo "Testing ft_strnequ(\"\", \"Test four\", 9)"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_strnequ "" "Test four" 9
		echo;;

	"ft_strsub" | "strsub")
		echo "Testing ft_strsub(\"Test one\", 2, 2)"
		echo "Expected result:"
		echo "st"
		echo "My result:"
		./tester ft_strsub "Test one" 2 2
		echo
		echo
		echo "Testing ft_strsub(\"Test two\", 0, 4)"
		echo "Expected result:"
		echo "Test"
		echo "My result:"
		./tester ft_strsub "Test two" 0 4
		echo
		echo
		echo "Testing ft_strsub(\"Test three\", 5, 5)"
		echo "Expected result:"
		echo "three"
		echo "My result:"
		./tester ft_strsub "Test three" 5 5
		echo;;

	"ft_strjoin" | "strjoin")
		echo "Testing ft_strjoin(\"Test\", \" one\")"
		echo "Expected result:"
		echo "Test one"
		echo "My result:"
		./tester ft_strjoin "Test" " one"
		echo
		echo
		echo "Testing ft_strjoin(\"Test two\", \"\")"
		echo "Expected result:"
		echo "Test two"
		echo "My result:"
		./tester ft_strjoin "Test two" ""
		echo
		echo
		echo "Testing ft_strjoin(\"\", \"Test three\")"
		echo "Expected result:"
		echo "Test three"
		echo "My result:"
		./tester ft_strjoin "" "Test three"
		echo;;

	"ft_strtrim" | "strtrim")
		echo "Testing ft_strtrim(\"Test one\")"
		echo "Expected result:"
		echo "Test one"
		echo "My result:"
		./tester ft_strtrim "Test one"
		echo
		echo
		echo "Testing ft_strtrim(\"   Test two\")"
		echo "Expected result:"
		echo "Test two"
		echo "My result:"
		./tester ft_strtrim "   Test two"
		echo
		echo
		echo "Testing ft_strtrim(\"Test three	\")"
		echo "Expected result:"
		echo "Test three"
		echo "My result:"
		./tester ft_strtrim "Test three	"
		echo
		echo
		echo "Testing ft_strtrim(\"   Test four   \")"
		echo "Expected result:"
		echo "Test four"
		echo "My result:"
		./tester ft_strtrim "   Test four   "
		echo
		echo
		echo "Testing ft_strtrim(\"\")"
		echo "Expected result:"
		echo ""
		echo "My result:"
		./tester ft_strtrim ""
		echo
		echo
		echo "Testing ft_strtrim(\"   \")"
		echo "Expected result:"
		echo ""
		echo "My result:"
		./tester ft_strtrim "   "
		echo;;

	"ft_strsplit" | "strsplit")
		echo "Testing ft_strsplit(\"Test one\", ' ')"
		echo "Expected result:"
		echo "[Test, one]"
		echo "My result:"
		./tester ft_strsplit "Test one" " "
		echo
		echo
		echo "Testing ft_strsplit(\"Test two\", 'a')"
		echo "Expected result:"
		echo "[Test two]"
		echo "My result:"
		./tester ft_strsplit "Test two" a
		echo
		echo
		echo "Testing ft_strsplit(\"00000Test00three000\", '0')"
		echo "Expected result:"
		echo "[Test, three]"
		echo "My result:"
		./tester ft_strsplit "00000Test00three000" 0
		echo;;

	"ft_itoa" | "itoa")
		echo "Testing ft_itoa(1)"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_itoa 1
		echo
		echo
		echo "Testing ft_itoa(-1)"
		echo "Expected result:"
		echo "-1"
		echo "My result:"
		./tester ft_itoa -1
		echo
		echo
		echo "Testing ft_itoa(100)"
		echo "Expected result:"
		echo "100"
		echo "My result:"
		./tester ft_itoa 100
		echo
		echo
		echo "Testing ft_itoa(0)"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_itoa 0
		echo
		echo
		echo "Testing ft_itoa(-42)"
		echo "Expected result:"
		echo "-42"
		echo "My result:"
		./tester ft_itoa -42
		echo
		echo
		echo "Testing ft_itoa(2147483647)"
		echo "Expected result:"
		echo "2147483647"
		echo "My result:"
		./tester ft_itoa 2147483647
		echo
		echo
		echo "Testing ft_itoa(-2147483648)"
		echo "Expected result:"
		echo "-2147483648"
		echo "My result:"
		./tester ft_itoa -2147483648
		echo;;

	"ft_putchar" | "putchar")
		echo "Testing ft_putchar('a')"
		echo "Expected result:"
		echo "a"
		echo "My result:"
		./tester ft_putchar 'a'
		echo
		echo
		echo "Testing ft_putchar('5')"
		echo "Expected result:"
		echo "5"
		echo "My result:"
		./tester ft_putchar '5'
		echo
		echo
		echo "Testing ft_putchar('$')"
		echo "Expected result:"
		echo "$"
		echo "My result:"
		./tester ft_putchar '$'
		echo;;

	"ft_putstr" | "putstr")
		echo "Testing ft_putstr(\"Yo yo yo yo\")"
		echo "Expected result:"
		echo "Yo yo yo yo"
		echo "My result:"
		./tester ft_putstr "Yo yo yo yo"
		echo
		echo
		echo "Testing ft_putstr(\"This is 5ever!!\")"
		echo "Expected result:"
		echo "This is 5ever!!"
		echo "My result:"
		./tester ft_putstr "This is 5ever!!"
		echo
		echo
		echo "Testing ft_putstr(\"The mobster1234!@#$\")"
		echo "Expected result:"
		echo "The mobster1234!@#$"
		echo "My result:"
		./tester ft_putstr "The mobster1234!@#$"
		echo;;

	"ft_putendl" | "putendl")
		echo "Testing ft_putendl(\"Yo yo yo yo\")"
		echo "Expected result:"
		echo "Yo yo yo yo"
		echo
		echo "My result:"
		./tester ft_putendl "Yo yo yo yo"
		echo
		echo
		echo "Testing ft_putendl(\"This is 5ever!!\")"
		echo "Expected result:"
		echo "This is 5ever!!"
		echo
		echo "My result:"
		./tester ft_putendl "This is 5ever!!"
		echo
		echo
		echo "Testing ft_putendl(\"The mobster1234!@#$\")"
		echo "Expected result:"
		echo "The mobster1234!@#$"
		echo
		echo "My result:"
		./tester ft_putendl "The mobster1234!@#$"
		echo;;

	"ft_putnbr" | "putnbr")
		echo "Testing ft_putnbr(1)"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_putnbr 1
		echo
		echo
		echo "Testing ft_putnbr(-1)"
		echo "Expected result:"
		echo "-1"
		echo "My result:"
		./tester ft_putnbr -1
		echo
		echo
		echo "Testing ft_putnbr(100)"
		echo "Expected result:"
		echo "100"
		echo "My result:"
		./tester ft_putnbr 100
		echo
		echo
		echo "Testing ft_putnbr(0)"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_putnbr 0
		echo
		echo
		echo "Testing ft_putnbr(-42)"
		echo "Expected result:"
		echo "-42"
		echo "My result:"
		./tester ft_putnbr -42
		echo
		echo
		echo "Testing ft_putnbr(2147483647)"
		echo "Expected result:"
		echo "2147483647"
		echo "My result:"
		./tester ft_putnbr 2147483647
		echo
		echo
		echo "Testing ft_putnbr(-2147483648)"
		echo "Expected result:"
		echo "-2147483648"
		echo "My result:"
		./tester ft_putnbr -2147483648
		echo;;

	"ft_putchar_fd" | "putchar_fd")
		echo "Testing ft_putchar_fd('a', 1)"
		echo "Expected result:"
		echo "a"
		echo "My result:"
		./tester ft_putchar_fd 'a' 1
		echo
		echo
		echo "Testing ft_putchar_fd('5', 1)"
		echo "Expected result:"
		echo "5"
		echo "My result:"
		./tester ft_putchar_fd '5' 1
		echo
		echo
		echo "Testing ft_putchar_fd('$', 1)"
		echo "Expected result:"
		echo "$"
		echo "My result:"
		./tester ft_putchar_fd '$' 1
		echo;;

	"ft_putstr_fd" | "putstr_fd")
		echo "Testing ft_putstr_fd(\"Yo yo yo yo\", 1)"
		echo "Expected result:"
		echo "Yo yo yo yo"
		echo "My result:"
		./tester ft_putstr_fd "Yo yo yo yo" 1
		echo
		echo
		echo "Testing ft_putstr_fd(\"This is 5ever!!\", 1)"
		echo "Expected result:"
		echo "This is 5ever!!"
		echo "My result:"
		./tester ft_putstr_fd "This is 5ever!!" 1
		echo
		echo
		echo "Testing ft_putstr_fd(\"The mobster1234!@#$\", 1)"
		echo "Expected result:"
		echo "The mobster1234!@#$"
		echo "My result:"
		./tester ft_putstr_fd "The mobster1234!@#$" 1
		echo;;

	"ft_putendl_fd" | "putendl_fd")
		echo "Testing ft_putendl_fd(\"Yo yo yo yo\", 1)"
		echo "Expected result:"
		echo "Yo yo yo yo"
		echo
		echo "My result:"
		./tester ft_putendl_fd "Yo yo yo yo" 1
		echo
		echo
		echo "Testing ft_putendl_fd(\"This is 5ever!!\", 1)"
		echo "Expected result:"
		echo "This is 5ever!!"
		echo
		echo "My result:"
		./tester ft_putendl_fd "This is 5ever!!" 1
		echo
		echo
		echo "Testing ft_putendl_fd(\"The mobster1234!@#$\", 1)"
		echo "Expected result:"
		echo "The mobster1234!@#$"
		echo
		echo "My result:"
		./tester ft_putendl_fd "The mobster1234!@#$" 1
		echo;;

	"ft_putnbr_fd" | "putnbr_fd")
		echo "Testing ft_putnbr_fd(1, 1)"
		echo "Expected result:"
		echo "1"
		echo "My result:"
		./tester ft_putnbr_fd 1 1
		echo
		echo
		echo "Testing ft_putnbr_fd(-1, 1)"
		echo "Expected result:"
		echo "-1"
		echo "My result:"
		./tester ft_putnbr_fd -1 1
		echo
		echo
		echo "Testing ft_putnbr_fd(100, 1)"
		echo "Expected result:"
		echo "100"
		echo "My result:"
		./tester ft_putnbr_fd 100 1
		echo
		echo
		echo "Testing ft_putnbr_fd(0, 1)"
		echo "Expected result:"
		echo "0"
		echo "My result:"
		./tester ft_putnbr_fd 0 1
		echo
		echo
		echo "Testing ft_putnbr_fd(-42, 1)"
		echo "Expected result:"
		echo "-42"
		echo "My result:"
		./tester ft_putnbr_fd -42 1
		echo
		echo
		echo "Testing ft_putnbr_fd(2147483647, 1)"
		echo "Expected result:"
		echo "2147483647"
		echo "My result:"
		./tester ft_putnbr_fd 2147483647 1
		echo
		echo
		echo "Testing ft_putnbr_fd(-2147483648, 1)"
		echo "Expected result:"
		echo "-2147483648"
		echo "My result:"
		./tester ft_putnbr_fd -2147483648 1
		echo;;

	# Bonus Part

	"ft_lstnew" | "lstnew")
		echo "Testing ft_lstnew(\"Yo yo yo yo\")"
		echo "Expected result:"
		echo "Yo yo yo yo"
		echo "11"
		echo
		echo "My result:"
		./tester ft_lstnew "Yo yo yo yo"
		echo
		echo
		echo "Testing ft_lstnew(\"This is 5ever!!\")"
		echo "Expected result:"
		echo "This is 5ever!!"
		echo "15"
		echo
		echo "My result:"
		./tester ft_lstnew "This is 5ever!!"
		echo
		echo
		echo "Testing ft_lstnew(\"The mobster1234!@#$\")"
		echo "Expected result:"
		echo "The mobster1234!@#$"
		echo "19"
		echo
		echo "My result:"
		./tester ft_lstnew "The mobster1234!@#$"
		echo;;

	"ft_lstdelone" | "lstdelone")
		echo "Testing ft_lstdelone(ft_lstnew(\"Yo yo yo yo\", 11))"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdelone "Yo yo yo yo"
		echo
		echo
		echo "Testing ft_lstdelone(ft_lstnew(\"This is 5ever!!\", 15))"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdelone "This is 5ever!!"
		echo
		echo
		echo "Testing ft_lstdelone(ft_lstnew(\"The mobster1234!@#$\", 19))"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdelone "The mobster1234!@#$"
		echo;;

	"ft_lstdel" | "lstdel")	
		echo "Testing ft_lstdel(\"Te\" \"st\" \" 1\")"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdel "Te" "st" " 1"
		echo
		echo
		echo "Testing ft_lstdel(\"Te\" \"st 2\" \"\")"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdel "Te" "st 2" ""
		echo
		echo
		echo "Testing ft_lstdel(\"\" \"Test\" \" 3\")"
		echo "Expected result:"
		echo "success"
		echo
		echo "My result:"
		./tester ft_lstdel "" "Test" " 3"
		echo;;

	"ft_lstadd" | "lstadd")	
		echo "Testing ft_lstadd(\"Te\" \"st\" \" 1\")"
		echo "Expected result:"
		echo "Test 1"
		echo
		echo "My result:"
		./tester ft_lstadd "Te" "st" " 1"
		echo
		echo
		echo "Testing ft_lstadd(\"Te\" \"st 2\" \"\")"
		echo "Expected result:"
		echo "Test 2"
		echo
		echo "My result:"
		./tester ft_lstadd "Te" "st 2" ""
		echo
		echo
		echo "Testing ft_lstadd(\"\" \"Test\" \" 3\")"
		echo "Expected result:"
		echo "Test 3"
		echo
		echo "My result:"
		./tester ft_lstadd "" "Test" " 3"
		echo;;

	"ft_lstiter" | "lstiter")
		echo "Testing ft_lstiter(\"Te\" \"st\" \" 1\")"
		echo "Expected result:"
		echo "Test 1"
		echo
		echo "My result:"
		./tester ft_lstiter "Te" "st" " 1"
		echo
		echo
		echo "Testing ft_lstiter(\"Te\" \"st 2\" \"\")"
		echo "Expected result:"
		echo "Test 2"
		echo
		echo "My result:"
		./tester ft_lstiter "Te" "st 2" ""
		echo
		echo
		echo "Testing ft_lstiter(\"\" \"Test\" \" 3\")"
		echo "Expected result:"
		echo "Test 3"
		echo
		echo "My result:"
		./tester ft_lstiter "" "Test" " 3"
		echo;;

	"ft_lstmap" | "lstmap")
		echo "Testing ft_lstmap(\"Te\" \"st\" \"1\")"
		echo "Expected result:"
		echo "Uftu2"
		echo
		echo "My result:"
		./tester ft_lstmap "Te" "st" "1"
		echo
		echo
		echo "Testing ft_lstmap(\"Te\" \"st2\" \"\")"
		echo "Expected result:"
		echo "Uftu3"
		echo
		echo "My result:"
		./tester ft_lstmap "Te" "st2" ""
		echo
		echo
		echo "Testing ft_lstmap(\"\" \"Test\" \"3\")"
		echo "Expected result:"
		echo "Uftu4"
		echo
		echo "My result:"
		./tester ft_lstmap "" "Test" "3"
		echo;;

	*) echo "Please enter a libft function.";;
esac