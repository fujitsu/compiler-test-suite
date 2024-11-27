#include <stdlib.h>
#include <stdio.h>
#include <setjmp.h>
jmp_buf env;
long long int a=0;
int main( ) {
           long long int subb( ),b;
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
long long int b=0;

  goto F1;

  while (1LL) {

    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a<<=32;
    a>>=32;
    a+=10LL;
    if (a>30LL) longjmp(env,1);
  }
}
long long int subb( ) {
volatile long long int a=0,b=0;

  goto F1;

  while (1LL) {

    if (b==0) {
      b++;
      F1:
      a++;
      continue;
    }
    a<<=32;
    a>>=32;
    a+=10LL;
    if (a>30LL) break;
  }
  return a;
}
