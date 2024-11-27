
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1400

void sub(double *a, double *b ,int n, int m)
{
  int i,j;
  j = 0;
  for (i=0; i<m; i++) {
    j = j + 1;
    a[j] = a[j] + b[j];
    j = j + 3;
    a[j] = a[j] + b[j];
  }
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

  sub(a,b,loop_num,100);

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
