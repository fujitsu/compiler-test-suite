#include <stdio.h>
#include <math.h>

#define N 100
void sub(const double a[][N], const double b[][N],
	 const int m1[][N], const int m2[][N],
	 const int m3[][N], const int m4[][N],
	 double *x)
{
  int i,j;
  double tmp_x;

  tmp_x = *x;
  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      if (m1[j][i] != m2[j][i]) {
	if ((m3[j][i] != 0) || (m4[j][i] != 0)) {
	  tmp_x =  tmp_x + a[j][i]*b[j][i];
	} else {
	  tmp_x =  tmp_x - a[j][i]*b[j][i];
	}
      }
    }
  }
  *x = tmp_x;
}

#define ANS  9996660.504450
#define ABSOLUTE_ERROR       0.00001
int main(void) 
{
  double a[N][N],b[N][N];
  int m1[N][N],m2[N][N],m3[N][N],m4[N][N];
  double x;
  int i, j, num;

  for (j=0; j<N; ++j) {
    for (i=0; i<N; ++i) {
      num = (i+1)+j*N;
      a[j][i] = (double)num/1.0/N;
      b[j][i] = (double)num/2.0/N;
      m1[j][i] = num%2;
      m2[j][i] = num%3;
      m3[j][i] = num%4;
      m4[j][i] = num%5;
    }
  }
  x = 0.0;
  sub((const double (*)[N])a,(const double (*)[N])b,
      (const int (*)[N])m1,(const int (*)[N])m2,
      (const int (*)[N])m3,(const int (*)[N])m4,
      &x);

  if (fabs(x - ANS) <= ABSOLUTE_ERROR) {
    fprintf(stdout, "ok\n");
  } else {
    fprintf(stdout, "ng: %lf != %lf\n", x, ANS);
  }
}
