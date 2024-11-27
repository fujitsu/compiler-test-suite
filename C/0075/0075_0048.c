#include <stdio.h>

#include <setjmp.h>

jmp_buf env;

int
foo1()
{
  volatile double d;
  volatile int i, j;

  if (setjmp(env) == 0) {
    i = 4;
    d = 10.0;
    longjmp(env, 1);
  }
  else {
    i++;
    d /= 2.0;
  }
  if (i == d) 
    return 1;
  else 
    return 0;
}

int foo2()
{
  volatile double d;
  volatile int i, j;

  if (setjmp(env) == 0) {
    i = 4;
    j = 0;
    d = 10.0;
    longjmp(env, 1);
  }
  else {
    i++;
    j++;
    d /= 2.0;
  }
  if ((i == d) == j)
    return 1;
  else 
    return 0;
}

int foo3()
{
  volatile double d;
  volatile int i, j, k;

  if (setjmp(env) == 0) {
    i = 4;
    j = 0;
    k = 10;
    d = 10.0;
    longjmp(env, 1);
  }
  else {
    i++;
    j++;
    d /= 2.0;
    k /= d;
  }
  if (k - ((i == d) == j) == 1)
    return 1;
  else 
    return 0;
}
int main()
{
  printf("####   START ####\n");
  if (foo1() && foo2() && foo3())
    printf("####   OK    ####\n");
  else
    printf("####   NG    ####\n");
  printf("####   END   ####\n");
}
