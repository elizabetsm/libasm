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
    // int i = strlen("hello");
    // int j = ft_strlen("hello");

    // if (i == j)
    //     printf("ok");
    // else 
    //     printf("KO, i = %d, j = %d", i, j);

    printf("%d", ft_strcmp("da", "af"));

    // signal(SIGSEGV, baktrace);
    // char * src = "Hello";
    // char * dst = (char *)malloc(sizeof(src) * 40);
    // printf("%s\n", strcpy(dst, src));
    // printf("%s", ft_strcpy(dst, src));
    // free(dst);
    return 0;    
}