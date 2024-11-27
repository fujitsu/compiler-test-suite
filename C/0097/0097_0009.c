#include <stdio.h>
#include <math.h>

#define N 100
void sub(double a[][N], const double b[][N], const double c[][N], const double d[][N],
	 double x[][N], const double y[][N], const double z[][N],
	 const unsigned int m1[][N], const unsigned int m2[][N],
	 const unsigned int m3[][N], const unsigned int m4[][N])
{
  int i,j;
  
  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      if (m1[j][i] || m2[j][i]) {
	if (m3[j][i] || m4[j][i]) {
	  a[j][i] = b[j][i] + c[j][i]*d[j][i];
	}
      }
    }
  }
}

#define ANS  1342773.126042
#define ABSOLUTE_ERROR       0.00001
int main(void) 
{
  double a[N][N],b[N][N],c[N][N],d[N][N];
  double x[N][N],y[N][N],z[N][N];
  unsigned int m1[N][N],m2[N][N],m3[N][N],m4[N][N];
  double res;
  int i, j, num;

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      num = (i+1)+j*N;
      a[j][i] = (double)num/1.0/N;
      b[j][i] = (double)num/2.0/N;
      c[j][i] = (double)num/3.0/N;
      d[j][i] = (double)num/4.0/N;
      x[j][i] = (double)num/2.0/N;
      y[j][i] = (double)num/3.0/N;
      z[j][i] = (double)num/4.0/N;
      m1[j][i] = ((num%2) == 0) ? 1U : 0U;
      m2[j][i] = ((num%3) == 0) ? 1U : 0U;
      m3[j][i] = ((num%4) == 0) ? 1U : 0U;
      m4[j][i] = ((num%5) == 0) ? 1U : 0U;
    }
  }

  sub((double (*)[N])a,(const double (*)[N])b,(const double (*)[N])c,(const double (*)[N])d,
      (double (*)[N])x,(const double (*)[N])y,(const double (*)[N])z,
      (const unsigned int (*)[N])m1,(const unsigned int (*)[N])m2,
      (const unsigned int (*)[N])m3,(const unsigned int (*)[N])m4);

  res = 0;
  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      res += a[j][i];
    }
  }
  
  if (fabs(res - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS);
  }
}
