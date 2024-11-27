
#include <stdio.h>

#define loop_num 100
#define Correct_answer 0

void sub1(double *a1, double *b1, int n, int *m, int k)
{
  int i;

  i = 0;
  for (i=0; i<n; i=i+k) {
    b1[i] = i;
    goto L1;
    a1[i] = b1[i];
  }

 L1:
  return;
}

int main()
{
  double a1[loop_num], b1[loop_num];
  int m[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a1[i] = 0;
    b1[i] = 0;
    m[i] = 0;
    if (i == loop_num -1) { m[i] = 1; }
  }

  sub1(a1,b1,loop_num,m,3);

  result = 0;

  for (i=0; i<loop_num; i++) {
    result += a1[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng ... %d\n",result);
  }
  return 0;
}
