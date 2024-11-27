
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1020

void sub(short *a, short *b ,int n)
{
  int i;
  for (i=0; i<n; i=i+100) {
    a[i] = a[i] + b[i];
  }
  return;
}

void sub01(unsigned short *a, unsigned short *b ,int n)
{
  int i;
  for (i=0; i<n; i=i+100) {
    a[i] = a[i] + b[i];
  }
  return;
}

int main()
{
  short a[loop_num], b[loop_num];
  unsigned short a01[loop_num], b01[loop_num];
  int i,result,result01;

  for (i=0; i<loop_num; i++) {
    a[i] = 1;
    b[i] = 2;
    a01[i] = 1;
    b01[i] = 2;
  }

  sub(a,b,loop_num);
  sub01(a01,b01,loop_num);

  result = 0;
  result01 = 0;
  for (i=0; i<loop_num; i++) {
    result += a[i];
    result01 += a01[i];
  }
  
  if (result == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub %d\n",result);
  }

  if (result01 == Correct_answer) {
    printf("ok\n");
  } else {
    printf("ng sub01 %d\n",result01);
  }
  return 0;
}
