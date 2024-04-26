/**************************************************
 * This is a test of using the restrict modifier.
 **************************************************/
#include <stdio.h>

void foo(int *a, int *b, int n)
{
  int i;
  int * restrict p1, * restrict p2;
  p1 = a;
  p2 = b;
  for (i=0; i<n; ++i) {
    p1[i] = p1[i] + p1[i]*p2[i];
  }
}

int main(void)
{
  int a[100], b[100];
  int i, k=0;

  for (i=0; i<100; ++i) {
    a[i] = i;
    b[99-i] = i;
  }
  
  foo(a,b,100);

  for (i=0; i<100; ++i) {
    k += a[i];
  }

  if (k == 166650) {
    printf("restrict : ok\n");
  } else {
    printf("restrict : ng\n");
  }
  return 0;
}
