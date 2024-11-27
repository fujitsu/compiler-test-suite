
#include <stdio.h>

#define loop_num 1000
#define Correct_answer01 1396
#define Correct_answer02 1388
#define Correct_answer03 1376

void sub01(double *a, double *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n-17; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]] + b[c[i+17]];
  }
  return;
}

void sub02(double *a, double *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n-33; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]] + b[c[i+33]];
  }
  return;
}

void sub03(double *a, double *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n-65; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]] + b[c[i+65]];
  }
  return;
}

int main()
{
  double a01[loop_num], b01[loop_num];
  double a02[loop_num], b02[loop_num];
  double a03[loop_num], b03[loop_num];
  int c[loop_num];
  int i,result01,result02,result03;

  for (i=0; i<loop_num; i++) {
    a01[i] = 1.0;
    b01[i] = 2.0;
    a02[i] = 1.0;
    b02[i] = 2.0;
    a03[i] = 1.0;
    b03[i] = 2.0;
    c[i] = i;
  }

  sub01(a01,b01,c,loop_num,10);
  sub02(a02,b02,c,loop_num,10);
  sub03(a03,b03,c,loop_num,10);

  result01 = 0;
  result02 = 0;
  result03 = 0;
  for (i=0; i<loop_num; i++) {
    result01 += a01[i];
    result02 += a02[i];
    result03 += a03[i];
  }
  
  if (result01 == Correct_answer01) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result01);
  }
  if (result02 == Correct_answer02) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result02);
  }
  if (result03 == Correct_answer03) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result03);
  }

  return 0;
}
