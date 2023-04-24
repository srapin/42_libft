# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: srapin <srapin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/05 01:15:01 by srapin            #+#    #+#              #
#    Updated: 2022/11/13 00:44:59 by srapin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
CC	= gcc
CFLAGS	= -Wall -Wextra -Werror
AR	= ar -rc
SRC	= ft_isalpha.c\
	ft_isdigit.c\
	ft_isalnum.c\
	ft_isascii.c\
	ft_isprint.c\
	ft_strlen.c\
	ft_memset.c\
	ft_bzero.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_toupper.c\
	ft_tolower.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_calloc.c\
	ft_strncmp.c\
	ft_strnstr.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strdup.c\
	ft_substr.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_striteri.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_atoi.c 
	
BONUS = ft_lstnew.c\
		ft_lstadd_front.c\
		ft_lstsize.c\
		ft_lstlast.c\
		ft_lstadd_back.c\
		ft_lstdelone.c\
		ft_lstclear.c\
		ft_lstiter.c\
		ft_lstmap.c
BONUS_OBJS = $(BONUS:.c=.o)
RM	= rm -f
OBJS	= $(SRC:.c=.o)
HEADER	= ./includes

.o: .c
	$(CC) $(CFLAGS) -I$(HEADER) -c $< -o $(<:.c=.o)

all:	$(NAME)

$(NAME):	$(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:	
	$(RM) $(OBJS) $(BONUS_OBJS)

fclean:	clean 
	$(RM) $(NAME) 

bonus: 	$(OBJS) $(BONUS_OBJS)
	$(AR) $(NAME) $(OBJS) $(BONUS_OBJS)

re:	fclean all

.PHONY:	all clean re fclean
