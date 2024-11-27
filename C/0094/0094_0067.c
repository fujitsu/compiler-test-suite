#include <stdlib.h>
#include <stdio.h>
#include <setjmp.h>
jmp_buf env;
long int a=0;
int main( ) {
           long int subb( ),b;
           void  suba( );

           if (setjmp(env)) {
             b=subb( ); 
             if (a==b) 
                   printf(" ok\n");
             else  printf(" ng\n");
             exit(0);
           }
           suba( );
           printf(" ng\n");
}
void suba( ) {
long int b=0;

  goto F1;

  while (1) {
    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a+=10;
    if (a>30) longjmp(env,1);
  }
}
long int subb( ) {
volatile long int a=0,b=0;

  goto F1;

  while (1) {
    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a+=10;
    if (a>30) break;
  }
  return a;
}
