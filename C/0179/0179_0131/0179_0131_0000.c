#include <stdio.h>

extern int varargs_func(int a1, ... );

int main(void)
{
  int data;
  
  if ((data = varargs_func(1,1)) == 1)
    printf("ok: %d\n", data);
  else
    printf("ng: %d\n", data);
  if ((data = varargs_func(2,1,2)) == 2)
    printf("ok: %d\n", data);
  else
    printf("ng: %d\n", data);
  if ((data = varargs_func(3,1,2,3)) == 3)
    printf("ok: %d\n", data);
  else
    printf("ng: %d\n", data);
}
