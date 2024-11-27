
#include <stdio.h>
#include <complex.h>
#define  complexfloat  _Complex float
#define  complexdouble  _Complex double
#define  complexlongdouble _Complex long double

#define loop_num 1000
#define Correct_answer 3000

void sub(complexfloat *a, complexfloat *b ,int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = a[i] + b[i];
  }
  return;
}

int main()
{
  complexfloat a[loop_num], b[loop_num];
  int i,result;

  for (i=0; i<loop_num; i++) {
    a[i] = 1.0 + 0.0i ;
    b[i] = 2.0 + 0.0i ;
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
