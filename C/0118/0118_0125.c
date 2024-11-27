
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1002

void sub(double *a, double *b ,int n)
{
  double tmp;
  int i;

  i = 1;
  tmp = a[i] + b[i];

 chechk_point1:

  a[i] = tmp;
  if (i<=n-1) {
    goto chechk_point2;
  }
  i = i + 1;
  tmp = a[i] + b[i];
  goto chechk_point1;

 chechk_point2:

  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
  }

  sub(a,b,loop_num);

  result = 0.0;
  for (i=0; i<loop_num; i++) {
    result += a[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  return 0;
}
