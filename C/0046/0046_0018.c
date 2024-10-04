
#include <stdio.h>

volatile int x, y, i;

int volatile_cse(void) 
{
  int t1, t2;
  t1 = x + y;
  t2 = x + y;
  return t1+t2;
}

int volatile_dce(void) 
{
  int t1, t2;
  t1 = x;
  t2 = y;
  return 1;
}

int volatile_inv(int a[], int n) 
{
  int k = 0;
  for (i=0; i<n; ++i) {
    k = k + a[i];
  }
  return k;
}

int main(void) 
{
  const int cse_ans = 4;
  const int dce_ans = 1;
  const int inv_ans = 4950;
  const int n = 100;
  int a[100];
  int mm = 1;

  x = 1;
  y = 1;
  i = 0;
  for (i=0; i<n; ++i) {
    a[i] = i;
  }
  
  if (volatile_cse() != cse_ans) {
    mm = 0;
    printf("ng : %d != %d\n", volatile_cse(), cse_ans);
  }
  if (volatile_dce() != dce_ans) {
    mm = 0;
    printf("ng : %d != %d\n", volatile_dce(), dce_ans);
  }
  if (volatile_inv(a,100) != inv_ans) {
    mm = 0;
    printf("ng : %d != %d\n", volatile_inv(a,100), inv_ans);
  }
  if (mm != 0) {
    printf("ok\n");
  }
  return 0;
}


