# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ramedjra <ramedjra@student.42wolfsburg.    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/10 17:58:24 by ramedjra          #+#    #+#              #
#    Updated: 2023/01/10 17:58:24 by ramedjra         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a

SUBDIR		= libft

SRCS		= ft_printf.c

OBJS		= ${SRCS:.c=.o}

GCC			= gcc

CFLAGS		= -Wall -Wextra -Werror

AR			= ar -rc

RM			= rm -f

${NAME}:	${SUBDIR} ${OBJS}
			cp libft/libft.a .
			mv libft.a ${NAME}
			${AR} ${NAME} ${OBJS}

${OBJS}:	${SRCS}
			${CC} ${CFLAGS} -c ${SRCS}


${SUBDIR}:
			cd libft && make

all:		${NAME}

clean:
			${RM} ${OBJS}
			cd libft && make clean

fclean:		clean
			${RM} ${NAME}
			cd libft && make fclean

re:			fclean all

.PHONY:		all clean fclean re ${SUBDIR}
