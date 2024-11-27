
#include <stdio.h>
#include <math.h>
#define ANS_CHAR 2
#define ANS_UCHAR 0
#define ANS_UINT 9
#define ANS_SHORT 1
#define ANS_LONG 7
#define ANS_ULONG 3
#define ANS_FLOAT 49.0
#define ANS_DOUBLE 4.0

#define equal_check(val1, val2) (fabsf(val1 - val2)/fabsf(val1) <= 1.0e-6F)

void init(char *a, unsigned char *b, unsigned int *c,
	  short *d, long *e, unsigned long *f,
	  float *g, double *h) {
  *a = 1;
  *b = 2;
  *c = 3;
  *d = 4;
  *e = 5;
  *f = 6;
  *g = 7.0;
  *h = 8.0;
}

void test(char a, unsigned char b, unsigned int c,
	  short d, long e, unsigned long f,
	  float g, double h) {
  if (a != ANS_CHAR || b != ANS_UCHAR || c != ANS_UINT
      || d != ANS_SHORT || e != ANS_LONG || f != ANS_ULONG
      || !equal_check(g, ANS_FLOAT) || !equal_check(h, ANS_DOUBLE)) {
    printf("NG\n");
  }
  printf("OK\n");
  
}

int main()
{
  char a;
  unsigned char b;
  unsigned int c;
  short d;
  long e;
  unsigned long f;
  float g;
  double h;
  
  init (&a, &b, &c, &d, &e, &f, &g, &h);

#pragma omp parallel
#pragma omp single
  {
#pragma omp task shared(a, b, c, d, e, f, g, h) \
  depend(in: a, b, c, d, e, f, g, h)
    {
      a += 1;
      b -= 2;
      c *= 3;
      d /= 4;
      e += 2;
      f -= 3;
      g *= g;
      h /= 2;
    }
#pragma omp task shared(a, b, c, d, e, f, g, h) \
  depend(out: a, b, c, d, e, f, g, h)
    {    
      test(a, b, c, d, e, f, g, h);
    }
  }
  return 0;
}
