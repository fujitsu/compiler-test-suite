#include <stdio.h>
typedef char *          addr_t;
typedef unsigned int    __ulong32_t;
size_t  bitmapsz;
int main(){
addr_t rbot;
addr_t rtop;
char a;
a = 4;
  bitmapsz =  (((( ((rbot - rtop) >>  (int)a ) >> 3 )+
(( sizeof(__ulong32_t))-1))/( sizeof(__ulong32_t) ))) ;

printf("ok\n");
}
