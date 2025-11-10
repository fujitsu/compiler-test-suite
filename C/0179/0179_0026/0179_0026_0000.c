#include <stdio.h>

extern int setjmp_sub(void);

int main(void)
{
  if (setjmp_sub()) printf("ok\n");
  else              printf("ng\n");
}
