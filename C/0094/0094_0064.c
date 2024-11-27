#include <stdio.h>
#include <setjmp.h>
long int z=0xffff0000;
int main(void) {
volatile   long int x=0xff00ff00;
  jmp_buf env;
  if (setjmp(env)==0) goto sub1;
    if (x==0xff000000) printf(" ok1\n");
    else                         printf(" ng1\n");
  if (setjmp(env)==0) goto sub2;
    if (x==0x00ff0000) printf(" ok2\n");
    else                         printf(" ng2\n");
  if (setjmp(env)==0) goto sub3;
    if (x==0xffff0000) printf(" ok3\n");
    else                         printf(" ng3\n");
  return 0;

sub1: x &= z;
      longjmp(env,1);
sub2: x ^= z;
      longjmp(env,1);
sub3: x |= z;
      longjmp(env,1);
}


  
