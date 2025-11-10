#include <setjmp.h>

int setjmp_sub(void) 
{
  jmp_buf env;
  if (setjmp(env) == 1) {
    return 1;
  }
  longjmp(env, 1);
  return 0;
}

