#include <stdio.h>
#include <stdarg.h>

typedef struct TEST_TAG { int i; int y; } test_t;

void vsub(test_t a1, ...)
{
  va_list ap;
  va_start(ap,a1);

  printf("%d\n",a1.i);
  printf("%d\n",va_arg(ap,test_t).i);
}

int main(void)
{
  static test_t in1 = {1};
  static test_t in2 = {2};
  vsub(in1,in2);
  return 0;
}

