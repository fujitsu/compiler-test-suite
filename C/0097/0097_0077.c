#include <stdio.h>
#include <math.h>

#define N 100
void sub(double a[], const double b[], const double c[], const double d[],
	 const long long int m1[], const long long int m2[], const long long int m3[], const long long int m4[])
{
  int i;
  
  for (i=0; i<N; ++i) {
    if ((10LL > m1[i] + m2[i] - m3[i]) && (10LL > m4[i])) {
      a[i] = b[i] + c[i]*d[i];
    } else {
      a[i] = b[i] - c[i]*d[i];
    }
  }
}

#define ANS  27.478900
#define ABSOLUTE_ERROR  0.00001
int main(void) 
{
  double a[N],b[N],c[N],d[N];
  long long int m1[N],m2[N],m3[N],m4[N];
  double res;
  int i;

  for (i=0; i<N; ++i) {
    a[i] = (double)i/1.0/N;
    b[i] = (double)i/2.0/N;
    c[i] = (double)i/3.0/N;
    d[i] = (double)i/4.0/N;
    m1[i] = ((long long int)i)%1;
    m2[i] = ((long long int)i)%11;
    m3[i] = ((long long int)i)%21;
    m4[i] = ((long long int)i)%2;
  }

  sub(a,(const double *)b,(const double *)c,(const double *)d,
      (const long long int *)m1,(const long long int *)m2,
      (const long long int *)m3,(const long long int *)m4);

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
