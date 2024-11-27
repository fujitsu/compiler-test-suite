#include <stdio.h>
#include <math.h>

#define N 30
void sub(double a[][N][N], const double b[][N][N], const double c[][N][N], const double d[][N][N],
	 const double e[][N][N], double x[][N][N], double y[][N][N],
	 const int m1[][N][N], const int m2[][N][N],
	 const int m3[][N][N], const int m4[][N][N])
{
  int i,j,k;
  
  for (k=0; k<N; ++k) {
    for (j=0; j<N; ++j) {
      for (i=0; i<N; ++i) {
	if (m1[k][j][i] + m2[k][j][i] >= 0) {
	  if (m3[k][j][i] + m4[k][j][i] >= 0) {
	    a[k][j][i] = b[k][j][i] + c[k][j][i]*d[k][j][i];
	  } else {
	    a[k][j][i] = b[k][j][i] - c[k][j][i]*d[k][j][i];
	  }
	}
      }
    }
  }
}

#define ANS  613608975.416664
#define ABSOLUTE_ERROR      0.00001
int main(void) 
{
  double a[N][N][N],b[N][N][N],c[N][N][N],d[N][N][N],e[N][N][N];
  double x[N][N][N],y[N][N][N];
  int m1[N][N][N],m2[N][N][N],m3[N][N][N],m4[N][N][N];
  double res;
  int i, j, k, num;

  for (k=0; k<N; ++k) {
    for (j=0; j<N; ++j) {
      for (i=0; i<N; ++i) {
	num = (i+1)+j*N + k*N*N;
	a[k][j][i] = (double)num/1.0/N;
	b[k][j][i] = (double)num/2.0/N;
	c[k][j][i] = (double)num/3.0/N;
	d[k][j][i] = (double)num/4.0/N;
	e[k][j][i] = (double)num/5.0/N;
	x[k][j][i] = (double)num/2.0/N;
	y[k][j][i] = (double)num/3.0/N;
	m1[k][j][i] = num%2;
	m2[k][j][i] = num%3;
	m3[k][j][i] = num%4;
	m4[k][j][i] = num%5;
      }
    }
  }

  sub((double (*)[N][N])a,(const double (*)[N][N])b,
      (const double (*)[N][N])c,(const double (*)[N][N])d,(const double (*)[N][N])e,
      (double (*)[N][N])x,(double (*)[N][N])y,
      (const int (*)[N][N])m1,(const int (*)[N][N])m2,
      (const int (*)[N][N])m3,(const int (*)[N][N])m4);

  res = 0;
  for (k=0; k<N; ++k) {
    for (j=0; j<N; ++j) {
      for (i=0; i<N; ++i) {
	res += a[k][j][i];
      }
    }
  }
  
  if (fabs(res - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", res, ANS);
  }
}
