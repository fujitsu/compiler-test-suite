#include <stdio.h>
#include <string.h>

#define SIZE 128

extern void foo(double *a,
		double *b,
		double *c,
		const int len) __attribute__ ((simd));

int main()
{
  double a[SIZE], b[SIZE], c[SIZE];
  
  int i;
  for (i = 0; i < SIZE; ++i) {
    b[i] = (double)i;
    c[i] = (double)(i + 1);
  }

  foo(a, b, c, SIZE);

  printf("a[0]   = %5.5f\n", a[0]);
  printf("a[3]   = %5.5f\n", a[3]);
  printf("a[7]   = %5.5f\n", a[7]);
  printf("a[15]  = %5.5f\n", a[15]);
  printf("a[31]  = %5.5f\n", a[31]);
  printf("a[63]  = %5.5f\n", a[63]);
  printf("a[127] = %5.5f\n", a[127]);
  
  return 0;
}
