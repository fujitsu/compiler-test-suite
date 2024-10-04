
#include <stdio.h>
#include <setjmp.h>

struct jmpenv {
     struct jmpenv *     je_prev;
     jmp_buf             je_buf;
     int                 je_ret;
} ; 
int main()
{
  struct jmpenv cur_env;
  struct jmpenv * cur_env_ptr = &cur_env;

  printf("### jmp_buf_13 ### start \n");

  if(setjmp(cur_env_ptr->je_buf) == 0) {
    printf("   then 1 \n");
    longjmp(cur_env_ptr->je_buf, 1);
    printf("   then 2 \n");
  } else {
    printf("   else \n");
  }

  printf("### jmp_buf_13 ### end \n");
}