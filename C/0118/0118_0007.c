#include <stdio.h>
#define nn 100
#define Correct_answer 10000

void foo(double a[nn][nn], double b[nn][nn], int n)
{
  int i,j;

  for (i=0; i<n; i++) {
    for (j=0; j<n; j++) {
      a[i][j] = b[i][j];
    }
  }
}

int main()
{
  double a[nn][nn],b[nn][nn];
  int i,j,result;

  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      a[i][j] = 0.0;
      b[i][j] = 1.0;
    }
  }  
  foo(a,b,nn);
  result = 0;
  for (i=0; i<nn; i++) {
    for (j=0; j<nn; j++) {
      result += a[i][j];
    }
  }
  if (result != Correct_answer) {
    printf("ng foo %d\n",result);
  } else {
    printf("ok\n");
  }
  return 0;
}
