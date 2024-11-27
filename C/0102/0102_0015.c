#include <stdio.h>
#include <memory.h>

float in_a[10] = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
float in_b[10] = { 2, 2, 2, 2, 2, 2, 2, 2, 2, 2 };
float in_c[10] = { -2, -2, -2, -2, -2, -2, -2, -2, -2, -2 };
float res[10];
float ans[10];

void test(int n)
{
  int i;

 for (i = 0; i < n; i++) {
  res[i] = in_a[0] * in_b[0] + in_a[0] * in_c[0];
 }
}

int main()
{
  test(10);

  if (memcmp(res, ans, sizeof(res)) == 0 ) {
    puts("PASS");
  }
  else {
    puts("NG");
  }
  return 0;
}
