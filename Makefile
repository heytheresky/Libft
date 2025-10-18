# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bbastos- <bbastos-@student.42porto.com>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/10/18 19:48:26 by bbastos-          #+#    #+#              #
#    Updated: 2025/10/18 21:14:27 by bbastos-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

INCLUDE = libft.h

CC = cc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f

SRCS = ft_isalpha.c ft_isdigit.c ft_isalnum.c\
	   ft_isascii.c ft_isprint.c ft_toupper.c\
	   ft_tolower.c ft_memset.c ft_bzero.c\
	   ft_memcpy.c ft_memmove.c ft_memchr.c\
	   ft_memcmp.c ft_strlen.c ft_strchr.c\
	   ft_strrchr.c ft_strncmp.c ft_strnstr.c\
	   ft_strlcpy.c ft_strlcat.c ft_atoi.c\
	   ft_calloc.c ft_strdup.c ft_substr.c\

OBJS = $(SRCS:.c=.o)

all: $(NAME)

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME) : $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)
fclean: clean
	$(RM) $(NAME)
re: fclean all

.PHONY: all re clean fclean
