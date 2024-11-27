#include <stdio.h>
#include <memory.h>

void test(float *a, float *b, float *c, int n)
{
  int i;

 for (i = 0; i < n; i++) {
  a[i] = a[i] * b[i] + a[i] * c[i];
 }
}

float inout_a[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
float in_b[10] = { 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 };
float in_c[10] = { -2, -2, -2, -2, -2, -2, -2, -2, -2, -2 };
float ans[10];

int main()
{
  test(inout_a, in_b, in_c, 10);

  if (memcmp(inout_a, ans, sizeof(inout_a)) == 0 ) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
  return 0;
}
