#include <stdlib.h>
#include <stdio.h>
#include <setjmp.h>
int flong();
int ff();
void foo( )
{
   int i ;
   jmp_buf ja ;
   if ( setjmp(ja) != 0 ) return ;
   flong();
loop: i=0 ;
      ff() ;
      if ( i >= 10 ) return ;
      goto loop ;
}
int main(){ foo(); printf("Not reached.\n"); }
int jj ;
int ff() { printf("ok\n"); exit(0); }
int flong() {}
