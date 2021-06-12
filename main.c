#include "libasm.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
 #include <execinfo.h>
#include <signal.h>
#include <stdio.h>
#include <execinfo.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>
 #include <fcntl.h>
#include <stddef.h>
#define BT_BUF_SIZE 100

// void baktrace(){
//     int nptrs;
//     void *buffer[BT_BUF_SIZE];
//     char **strings;
//     nptrs = backtrace(buffer, BT_BUF_SIZE);
//     strings = backtrace_symbols(buffer, nptrs);
//      backtrace_symbols_fd(buffer, nptrs, STDERR_FILENO);
//   exit(1);
// }

int main(){
    ft_strdup("a");
    // int i = strlen("hello");
    // int j = ft_strlen("hello");

    // if (i == j)
    //     printf("ok");
    // else 
    //     printf("KO, i = %d, j = %d", i, j);

    int i = ft_strcmp("\x02", "\x01");
    int j = strcmp("\x02", "\x01");
    // printf("%d", ft_strcmp("df", "af"));
     if (i == j)
        printf("ok i = %d, j = %d", i, j);
    else 
        printf("KO, i = %d, j = %d", i, j);
// printf("%d", strcmp("", "af"));
    // char *dst = (char *)malloc(sizeof(char *) * 500);
    // printf("\n%s\n",ft_strcpy(dst, "ld: warning: PIE disabled. Absolute addressing (perhaps -mdynamic-no-pic) not allowed in code signed PIE, but used in _ft_strcpy from ./libasm.a(ft_strcpy.o). To fix this warning, don't compile with -mdynamic-no-pic or link with -Wl,-no_pie"));
    // printf("\n%s\n",strcpy(dst, "ld: warning: PIE disabled. Absolute addressing (perhaps -mdynamic-no-pic) not allowed in code signed PIE, but used in _ft_strcpy from ./libasm.a(ft_strcpy.o). To fix this warning, don't compile with -mdynamic-no-pic or link with -Wl,-no_pie"));
    // free(dst);
    // signal(SIGSEGV, baktrace);

    // printf("%d", ft_write(1, "hello world\n", 11));
    // int fd = open("ft_write.s", O_RDONLY);
    // char buf[12];
    // printf("%lu", ft_read(fd, &buf, 10));
    // printf("%s", buf);
    return 0;    
}