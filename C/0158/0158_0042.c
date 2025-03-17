#include <stdio.h>

#define loop_num 1000
#define EXPECTED_VALUE 3000000

double a[loop_num][loop_num];
double b[loop_num][loop_num];
double c[loop_num][loop_num];

void sub(void)
{
  int i,j;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      a[i][j] = a[i][j] + b[i][j] + c[i][j];
    }
  }
  return;
}

int main()
{
  int i,j,result;

  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      a[i][j] = 1;
      b[i][j] = 1;
      c[i][j] = 1;
    }
  }

  sub();

  result = 0;
  for (i=0; i<loop_num; i++) {
    for (j=0; j<loop_num; j++) {
      result += a[i][j];
    }
  }
  
  if (result == EXPECTED_VALUE) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
