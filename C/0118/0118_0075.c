
#include <stdio.h>

#define loop_num 1000
#define Correct_answer01 1080
#define Correct_answer02 1080
#define Correct_answer03 1080

void sub01(double *a, double *b ,int n)
{
  int i;
  for (i=0; i<n-17; i=i+100) {
    a[i] = a[i] + b[i] + b[i+1] + b[i+10] + b[i+17];
  }
  return;
}

void sub02(double *a, double *b ,int n)
{
  int i;
  for (i=0; i<n-33; i=i+100) {
    a[i] = a[i] + b[i+33] + b[i+20] + b[i+1] + b[i];
  }
  return;
}

void sub03(double *a, double *b ,int n)
{
  int i;
  for (i=0; i<n-65; i=i+100) {
    a[i] = a[i] + b[i] + b[i+65] + b[i+40] + b[i+1];
  }
  return;
}

int main()
{
  double a01[loop_num], b01[loop_num];
  double a02[loop_num], b02[loop_num];
  double a03[loop_num], b03[loop_num];
  int i,result01,result02,result03;

  for (i=0; i<loop_num; i++) {
    a01[i] = 1.0;
    b01[i] = 2.0;
    a02[i] = 1.0;
    b02[i] = 2.0;
    a03[i] = 1.0;
    b03[i] = 2.0;
  }

  sub01(a01,b01,loop_num);
  sub02(a02,b02,loop_num);
  sub03(a03,b03,loop_num);

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