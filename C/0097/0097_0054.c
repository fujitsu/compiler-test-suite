#include <stdio.h>
#include <math.h>

#define N 100
void sub(double a[], const double b[], const double c[], const double d[],
	 const unsigned int m1[], const unsigned int m2[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if (m1[i] && m2[i]) {
      a[i] = b[i] + c[i]*d[i];
    }
  }
}

#define ANS  47.584800
#define ABSOLUTE_ERROR  0.00001
int main(void) 
{
  double a[N],b[N],c[N],d[N];
  unsigned int m1[N],m2[N];
  double res;
  int i;

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = (i%3 == 0) ? 1U : 0U;
    m2[i] = (i%4 == 0) ? 1U : 0U;
  }

  sub(a,(const double *)b,(const double *)c,(const double *)d,
      (const unsigned int *)m1,(const unsigned int *)m2);

  res = 0;
  for (i=0; i<N; ++i) {
    res += a[i];
  }
  
  if (fabs(res - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS);
  }
}
