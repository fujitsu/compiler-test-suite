#include <stdio.h>
typedef char *          addr_t;
typedef unsigned int    __ulong32_t;
size_t  bitmapsz;
int main(){
int t;
int u;
addr_t rbot = (addr_t)&t;
addr_t rtop = (addr_t)&u;
char a;
a = 4;
  bitmapsz =  (((( ((rbot - rtop) >>  (int)a ) >> 3 )+
(( sizeof(__ulong32_t))-1))/( sizeof(__ulong32_t) ))) ;

printf("ok\n");
}
