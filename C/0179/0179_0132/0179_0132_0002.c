#include <stdio.h>

extern void volatile_sub(void);
extern void volatile_arg(volatile int *i);
extern volatile int volatile_func(void);

int main(void)
{
  volatile_sub();

  {
    volatile int i;
    volatile_arg(&i);
    if (i == 2) printf("ok: %d\n", i);
    else        printf("ng: %d\n", i);
  }

  {
    int i = volatile_func();
    if (i == 3) printf("ok: %d\n", i);
    else        printf("ng: %d\n", i);
  }
}
