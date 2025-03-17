#include <stdio.h>

#define loop_num 10000
#define EXPECTED_VALUE 80001

double a, b, c;

void sub()
{
  int i;
  for (i=0; i<loop_num; i++) {
    a = a + b + c;
  }
  return;
}

int main()
{
  int result;

  a = 1.0;
  b = 3.0;
  c = 5.0;

  sub();

  result = (int)a;

  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
