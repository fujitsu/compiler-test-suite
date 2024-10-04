
#include <stdio.h>
#include <setjmp.h>

union jmpenv {
     union jmpenv  *     je_prev;
     jmp_buf             je_buf;
     int                 je_ret;
} ; 
int main()
{
  union jmpenv cur_env ;

  printf("### jmp_buf_16 ### start \n");

  if(setjmp(cur_env.je_buf) == 0) {
    printf("   then 1 \n");
    longjmp(cur_env.je_buf, 1);
    printf("   then 2 \n");
  } else {
    printf("   else \n");
  }

  printf("### jmp_buf_16 ### end \n");
}
