
#include <stdio.h>

#define loop_num 1000
#define Correct_answer 1200

void sub(int *a, int *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]];
  }
  return;
}

void sub01(unsigned int *a, unsigned int *b, int *c, int n, int k)
{
  int i;
  for (i=0; i<n; i=i+k) {
    a[c[i]] = a[c[i]] + b[c[i]];
  }
  return;
}

int main()
{
  int a[loop_num], b[loop_num];
  unsigned int a01[loop_num], b01[loop_num];
  int c[loop_num];
  int i,result,result01;

  for (i=0; i<loop_num; i++) {
    a[i] = 1;
    b[i] = 2;
    a01[i] = 1;
    b01[i] = 2;
    c[i] = i;
  }

  sub(a,b,c,loop_num,10);
  sub01(a01,b01,c,loop_num,10);

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
