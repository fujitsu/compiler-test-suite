
#include <stdio.h>

#define loop_num 10000
#define Correct_answer 10300

void sub(double *a, double *b, int *c, int n, int m, int k)
{
  int i,j;
  j = 0;
  for (i=0; i<m; i=i+k) {
    j = j + 1;
    a[c[j]] = a[c[j]] + b[c[j]];
    j = j + 3;
    a[c[j]] = a[c[j]] + b[c[j]];
    j = j + 5;
    a[c[j]] = a[c[j]] + b[c[j]];
  }
  return;
}

int main()
{
  double a[loop_num], b[loop_num];
  int c[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0;
    b[i] = 2.0;
    c[i] = i;
  }

  sub(a,b,c,loop_num,100,2);

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
