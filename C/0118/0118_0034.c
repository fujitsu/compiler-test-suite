
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 3000

void sub(long double *a, long double *b ,int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = a[i] + b[i];
  }
  return;
}

int main()
{
  long double a[loop_num], b[loop_num];
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
