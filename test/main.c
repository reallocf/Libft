/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: csummers <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/04 14:49:16 by csummers          #+#    #+#             */
/*   Updated: 2016/11/04 14:49:18 by csummers         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <ctype.h>
#include <strings.h>

void	make_zero(char *c)
{
	*c = '0';
}

void	make_index(unsigned int i, char *c)
{
	*c = i + '0';
}

char	next_char(char c)
{
	return (c + 1);
}

char	index_more_than_char(unsigned int i, char c)
{
	return (c + i);
}

void	lst_deleter(void *content, size_t content_size)
{
	content = NULL;
	content_size = 0;
}

void	lst_strprint(t_list *elem)
{
	ft_putstr((char*)(elem->content));
}

t_list	*lst_map_plus_one(t_list *elem)
{
	char	*elem_content;
	size_t	i;

	elem_content = elem->content;
	i = 0;
	while (elem_content[i] != '\0')
	{
		elem_content[i] = elem_content[i] + 1;
		i++;
	}
	return (elem);
}

int		main(int argc, char **argv)
{
	char	*tempstr;
	void	*tempvoid;
	t_list	*lst;
	t_list	*lst2;
	t_list	*lst3;


	if (argc < 3)
		ft_putstr("incorrect usage: first word function, after are params\n");
	/* Part 1 */
	else if (ft_strequ(argv[1], "memset"))
		ft_putstr(memset(argv[2], argv[3][0], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_memset"))
		ft_putstr(ft_memset(argv[2], argv[3][0], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "bzero"))
	{
		tempstr = argv[2];
		bzero(tempstr, ft_atoi(argv[3]));
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_bzero"))
	{
		tempstr = argv[2];
		ft_bzero(tempstr, ft_atoi(argv[3]));
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "memcpy"))
		ft_putstr(memcpy(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_memcpy"))
		ft_putstr(ft_memcpy(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "memccpy"))
	{
		tempstr = argv[2];
		memccpy(tempstr, argv[3], argv[4][0], ft_atoi(argv[5]));
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_memccpy"))
	{
		tempstr = argv[2];
		ft_memccpy(tempstr, argv[3], argv[4][0], ft_atoi(argv[5]));
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "memmove <"))
		ft_putstr(memmove(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_memmove <"))
		ft_putstr(ft_memmove(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "memmove >"))
		ft_putstr(memmove(argv[3], argv[2], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_memmove >"))
		ft_putstr(ft_memmove(argv[3], argv[2], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "memchr"))
	{
		if (memchr(argv[2], argv[3][0], ft_atoi(argv[4])) != NULL)
			ft_putstr(memchr(argv[2], argv[3][0], ft_atoi(argv[4])));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "ft_memchr"))
	{
		if (ft_memchr(argv[2], argv[3][0], ft_atoi(argv[4])) != NULL)
			ft_putstr(ft_memchr(argv[2], argv[3][0], ft_atoi(argv[4])));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "memcmp"))
		ft_putnbr(memcmp(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_memcmp"))
		ft_putnbr(ft_memcmp(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "strlen"))
		ft_putnbr(strlen(argv[2]));
	else if (ft_strequ(argv[1], "ft_strlen"))
		ft_putnbr(ft_strlen(argv[2]));
	else if (ft_strequ(argv[1], "strdup"))
		ft_putstr(strdup(argv[2]));
	else if (ft_strequ(argv[1], "ft_strdup"))
		ft_putstr(ft_strdup(argv[2]));
	else if (ft_strequ(argv[1], "strcpy"))
		ft_putstr(strcpy(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "ft_strcpy"))
		ft_putstr(ft_strcpy(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "strncpy"))
		ft_putstr(strncpy(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_strncpy"))
		ft_putstr(ft_strncpy(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "strcat"))
	{
		tempstr = (char*)malloc(sizeof(char) * (ft_strlen(argv[2]) + ft_strlen(argv[3]) + 1));
		ft_strcpy(tempstr, argv[2]);
		ft_putstr(strcat(tempstr, argv[3]));
	}
	else if (ft_strequ(argv[1], "ft_strcat"))
		ft_putstr(ft_strcat(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "strncat"))
	{
		tempstr = (char*)malloc(sizeof(char) * (ft_strlen(argv[2]) + ft_strlen(argv[3]) + 1));
		ft_strcpy(tempstr, argv[2]);
		ft_putstr(strncat(tempstr, argv[3], ft_atoi(argv[4])));
	}
	else if (ft_strequ(argv[1], "ft_strncat"))
		ft_putstr(ft_strncat(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "strlcat"))
	{
		tempstr = (char*)malloc(sizeof(char) * (ft_strlen(argv[2]) + ft_strlen(argv[3]) + 1));
		ft_strcpy(tempstr, argv[2]);
		tempstr[ft_strlen(argv[2])] = '\0';
		ft_putnbr(strlcat(tempstr, argv[3], ft_atoi(argv[4])));
		ft_putchar('\n');
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_strlcat"))
	{
		tempstr = (char*)malloc(sizeof(char) * (ft_strlen(argv[2]) + ft_strlen(argv[3]) + 1));
		ft_strcpy(tempstr, argv[2]);
		tempstr[ft_strlen(argv[2])] = '\0';
		ft_putnbr(ft_strlcat(tempstr, argv[3], ft_atoi(argv[4])));
		ft_putchar('\n');
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "strchr"))
	{
		if (strchr(argv[2], argv[3][0]) != NULL)
			ft_putstr(strchr(argv[2], argv[3][0]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "ft_strchr"))
	{
		if (ft_strchr(argv[2], argv[3][0]) != NULL)
			ft_putstr(ft_strchr(argv[2], argv[3][0]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "strrchr"))
	{
		if (strrchr(argv[2], argv[3][0]) != NULL)
			ft_putstr(strrchr(argv[2], argv[3][0]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "ft_strrchr"))
	{
		if (ft_strrchr(argv[2], argv[3][0]) != NULL)
			ft_putstr(ft_strrchr(argv[2], argv[3][0]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "strstr"))
	{
		if (strstr(argv[2], argv[3]) != NULL)
			ft_putstr(strstr(argv[2], argv[3]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "ft_strstr"))
	{
		if (ft_strstr(argv[2], argv[3]) != NULL)
			ft_putstr(ft_strstr(argv[2], argv[3]));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "strnstr"))
	{
		if (strnstr(argv[2], argv[3], atoi(argv[4])) != NULL)
			ft_putstr(strnstr(argv[2], argv[3], atoi(argv[4])));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "ft_strnstr"))
	{
		if (ft_strnstr(argv[2], argv[3], atoi(argv[4])) != NULL)
			ft_putstr(ft_strnstr(argv[2], argv[3], atoi(argv[4])));
		else
			ft_putstr("NULL");
	}
	else if (ft_strequ(argv[1], "strcmp"))
		ft_putnbr(strcmp(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "ft_strcmp"))
		ft_putnbr(ft_strcmp(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "strncmp"))
		ft_putnbr(strncmp(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_strncmp"))
		ft_putnbr(ft_strncmp(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "atoi"))
		ft_putnbr(atoi(argv[2]));
	else if (ft_strequ(argv[1], "ft_atoi"))
		ft_putnbr(ft_atoi(argv[2]));
	else if (ft_strequ(argv[1], "isalpha"))
		ft_putnbr(isalpha(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_isalpha"))
		ft_putnbr(ft_isalpha(argv[2][0]));
	else if (ft_strequ(argv[1], "isdigit"))
		ft_putnbr(isdigit(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_isdigit"))
		ft_putnbr(ft_isdigit(argv[2][0]));
	else if (ft_strequ(argv[1], "isalnum"))
		ft_putnbr(isalnum(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_isalnum"))
		ft_putnbr(ft_isalnum(argv[2][0]));
	else if (ft_strequ(argv[1], "isascii"))
		ft_putnbr(isascii(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_isascii"))
		ft_putnbr(ft_isascii(argv[2][0]));
	else if (ft_strequ(argv[1], "isprint"))
		ft_putnbr(isprint(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_isprint"))
		ft_putnbr(ft_isprint(argv[2][0]));
	else if (ft_strequ(argv[1], "toupper"))
		ft_putchar(toupper(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_toupper"))
		ft_putchar(ft_toupper(argv[2][0]));
	else if (ft_strequ(argv[1], "tolower"))
		ft_putchar(tolower(argv[2][0]));
	else if (ft_strequ(argv[1], "ft_tolower"))
		ft_putchar(ft_tolower(argv[2][0]));
	/* Part 2 */
	else if (ft_strequ(argv[1], "ft_memalloc"))
	{
		tempvoid = ft_memalloc(atoi(argv[2]));
		ft_memdel(&tempvoid);
		if (tempvoid == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_memdel"))
	{
		tempvoid = ft_memalloc(atoi(argv[2]));
		ft_memdel(&tempvoid);
		if (tempvoid == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_strnew"))
	{
		tempstr = ft_strnew(atoi(argv[2]));
		ft_strdel(&tempstr);
		if (tempstr == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_strdel"))
	{
		tempstr = ft_strnew(atoi(argv[2]));
		ft_strdel(&tempstr);
		if (tempstr == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_strclr"))
	{
		tempstr = argv[2];
		ft_strclr(tempstr);
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_striter"))
	{
		tempstr = argv[2];
		ft_striter(argv[2], make_zero);
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_striteri"))
	{
		tempstr = argv[2];
		ft_striteri(argv[2], make_index);
		ft_putstr(tempstr);
	}
	else if (ft_strequ(argv[1], "ft_strmap"))
		ft_putstr(ft_strmap(argv[2], next_char));
	else if (ft_strequ(argv[1], "ft_strmapi"))
		ft_putstr(ft_strmapi(argv[2], index_more_than_char));
	else if (ft_strequ(argv[1], "ft_strequ"))
		ft_putnbr(ft_strequ(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "ft_strnequ"))
		ft_putnbr(ft_strnequ(argv[2], argv[3], ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_strsub"))
		ft_putstr(ft_strsub(argv[2], ft_atoi(argv[3]), ft_atoi(argv[4])));
	else if (ft_strequ(argv[1], "ft_strjoin"))
		ft_putstr(ft_strjoin(argv[2], argv[3]));
	else if (ft_strequ(argv[1], "ft_strtrim"))
		ft_putstr(ft_strtrim(argv[2]));
	else if (ft_strequ(argv[1], "ft_strsplit"))
		ft_putstrarr(ft_strsplit(argv[2], argv[3][0]));
	else if (ft_strequ(argv[1], "ft_itoa"))
		ft_putstr(ft_itoa(ft_atoi(argv[2])));
	else if (ft_strequ(argv[1], "ft_putchar"))
		ft_putchar(argv[2][0]);
	else if (ft_strequ(argv[1], "ft_putstr"))
		ft_putstr(argv[2]);
	else if (ft_strequ(argv[1], "ft_putendl"))
		ft_putendl(argv[2]);
	else if (ft_strequ(argv[1], "ft_putnbr"))
		ft_putnbr(ft_atoi(argv[2]));
	else if (ft_strequ(argv[1], "ft_putchar_fd"))
		ft_putchar_fd(argv[2][0], 1);
	else if (ft_strequ(argv[1], "ft_putstr_fd"))
		ft_putstr_fd(argv[2], 1);
	else if (ft_strequ(argv[1], "ft_putendl_fd"))
		ft_putendl_fd(argv[2], 1);
	else if (ft_strequ(argv[1], "ft_putnbr_fd"))
		ft_putnbr_fd(ft_atoi(argv[2]), 1);
	/* Bonus */
	else if (ft_strequ(argv[1], "ft_lstnew"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		ft_putendl((char*)(lst->content));
		ft_putnbr((int)(lst->content_size));
	}
	else if (ft_strequ(argv[1], "ft_lstdelone"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		ft_lstdelone(&lst, lst_deleter);
		if (lst == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_lstdel"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		lst2 = ft_lstnew((void*)argv[3], sizeof(argv[3][0]) * ft_strlen(argv[3]));
		lst3 = ft_lstnew((void*)argv[4], sizeof(argv[4][0]) * ft_strlen(argv[4]));
		ft_lstadd(&lst3, lst2);
		ft_lstadd(&lst2, lst);
		ft_lstdel(&lst, lst_deleter);
		if (lst == NULL)
			ft_putstr("success");
		else
			ft_putstr("fail");
	}
	else if (ft_strequ(argv[1], "ft_lstadd"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		lst2 = ft_lstnew((void*)argv[3], sizeof(argv[3][0]) * ft_strlen(argv[3]));
		lst3 = ft_lstnew((void*)argv[4], sizeof(argv[4][0]) * ft_strlen(argv[4]));
		ft_lstadd(&lst3, lst2);
		ft_lstadd(&lst2, lst);
		ft_lstiter(lst, lst_strprint);
	}
	else if (ft_strequ(argv[1], "ft_lstiter"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		lst2 = ft_lstnew((void*)argv[3], sizeof(argv[3][0]) * ft_strlen(argv[3]));
		lst3 = ft_lstnew((void*)argv[4], sizeof(argv[4][0]) * ft_strlen(argv[4]));
		ft_lstadd(&lst3, lst2);
		ft_lstadd(&lst2, lst);
		ft_lstiter(lst, lst_strprint);
	}
	else if (ft_strequ(argv[1], "ft_lstmap"))
	{
		lst = ft_lstnew((void*)argv[2], sizeof(argv[2][0]) * ft_strlen(argv[2]));
		lst2 = ft_lstnew((void*)argv[3], sizeof(argv[3][0]) * ft_strlen(argv[3]));
		lst3 = ft_lstnew((void*)argv[4], sizeof(argv[4][0]) * ft_strlen(argv[4]));
		ft_lstadd(&lst3, lst2);
		ft_lstadd(&lst2, lst);
		lst = ft_lstmap(lst, lst_map_plus_one);
		ft_lstiter(lst, lst_strprint);
	}
	return (0);
}
