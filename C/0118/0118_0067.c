
#include <stdio.h>
#include <complex.h>
#define  complexfloat  _Complex float
#define  complexdouble  _Complex double
#define  complexlongdouble _Complex long double

#define loop_num 1000
#define Correct_answer 1200

void sub(complexlongdouble *a, complexlongdouble *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]];
  }
  return;
}

int main()
{
  complexlongdouble a[loop_num], b[loop_num];
  int c[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0 + 0.0i ;
    b[i] = 2.0 + 0.0i ;
    c[i] = i;
  }

  sub(a,b,c,loop_num,10);

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