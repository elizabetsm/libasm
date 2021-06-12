#ifndef LIBASM_H
# define LIBASM_H

#include <stddef.h>
#include <sys/types.h>
#include <unistd.h>
ssize_t ft_read(int fildes, void *buf, size_t nbyte);
int ft_write(int fildes, const void *buf, size_t nbyte);
int ft_strlen(char *str);
int ft_strcmp(const char *s1, const char *s2);
char *ft_strcpy(char * dst, const char * src);
char *
     ft_strdup(const char *s1);
#endif

