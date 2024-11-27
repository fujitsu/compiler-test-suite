
#include <stdio.h>
#define nn 1000000
#define Correct_answer 1000000

void foo(double *a, double *b, int n)
{
  int i;

  for (i=0; i<n; i++) {
    a[i] = b[i];
  }
}

int main()
{
  double a[nn];
  int i,j,result;

  for (i=0; i<nn; i++) {
    a[i] = 1.0;
  }
  
  for (j=0; j<1; j++) {
    foo(a,a,nn);
    result = 0;
    for (i=0; i<nn; i++) {
      result += a[i];
    }
    if (result != Correct_answer) {
      printf("ng foo %d\n",result);
    }
  }
  printf("pass pointer_02\n");

  return 0;
}
