
#include <stdio.h>
#include <setjmp.h>

struct jmpenv {
     struct jmpenv *     je_prev;
     jmp_buf             je_buf;
     int                 je_ret;
} cur_env; 
int main()
{
  printf("### jmp_buf_02 ### start \n");

  if(setjmp(cur_env.je_buf) == 0) {
    printf("   then 1 \n");
    longjmp(cur_env.je_buf, 1);
    printf("   then 2 \n");
  } else {
    printf("   else \n");
  }

  printf("### jmp_buf_02 ### end \n");
}
