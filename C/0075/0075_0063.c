#include <stdio.h>
typedef char *          addr_t;
typedef unsigned int    __ulong32_t;
size_t  bitmapsz;
int main(){
int a;
int b;
addr_t rbot = (addr_t)&a;
addr_t rtop = (addr_t)&b;
 
  bitmapsz =  (((( ((rbot - rtop) >>  20 ) >> 3 )+
(( sizeof(__ulong32_t))-1))/( sizeof(__ulong32_t) ))) ;

printf("ok\n");
}
