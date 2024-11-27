#include <stdio.h>


#define N 50
#define ANS (double)200.0
#define ZERO (double)0.0
int main()
{
  int i, j;
  double a[N], b[N], c[N][N];
  double fg=ZERO, ff=ZERO, fa=ZERO, fb=ZERO;
  double sum=ZERO, fao, fbo, ffa, ffb, fff=ZERO;

  for (i = 0; i < N; i++) {
    a[i] = (double)(i % 3);
    b[i] = (double)(i*i % 3);
    for (j = 0; j < N; j++) {
      c[i][j] = a[i] - b[i];
      ff = ff + c[i][j];
      fg = fg - c[i][j];
      fa = fa + a[i];
      fb = fb + b[i];
      fao = fa + 1.0;
      fbo = fb + 1.0;
      fa = fao - fb;
      fb = fbo - fa;
      ffa = fa - 1.0;
      ffb = fb - 1.0;
      fff += ffa + ffb;
    }
    ff = (double)((int)ff % 3);
    fg = (double)((int)fg % 3);
    if (fa > (double)N || fa < -1*(double)N) {
      fa = ZERO;
    }
    if (fb > (double)N || fb < -1*(double)N) {
      fb = ZERO;
    }
  }

  if (fff == ZERO) {
    printf("data1  = %lf\n", ff); 
    printf("data2  = %lf\n", fg); 
  }

  for (i = 0; i < N; i++) {
    sum = sum + (ff - fg);
  }

  printf("data  = %lf --- ", sum); 

  if (sum == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %lf\n", ANS);
  }
}
