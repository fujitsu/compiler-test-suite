#include <stdio.h>

#define loop_num 10000
#define EXPECTED_VALUE 30000

double a[loop_num], b[loop_num], c[loop_num];

void sub()
{
  int i;
  for (i=0; i<loop_num; i++) {
    a[i] = a[i] + b[i] + c[i];
  }
  return;
}

int main()
{
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1;
    b[i] = 1;
    c[i] = 1;
  }

  sub();

  result = 0;

  for (i=0; i<loop_num; i++) {
    result += a[i];
  }
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
