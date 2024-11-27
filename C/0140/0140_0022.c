#include <stdio.h>


#define N 50
#define ANS 56
#include <math.h>
int main()
{
  int i, j, data;
  int a[N], b[N], c[N][N];
  double fg, ff=(double)0.0;

  for (i = 0; i < N; i++) {
    a[i] = i % 3;
    b[i] = i*i % 3;
    for (j = 0; j < N; j++) {
      c[i][j] = a[i] - b[i];
      ff = ff + (double)c[i][j];
      ff = (double)((int)ff);
    }
  }

  if (ff > (double)30.0) {
    ff = (double)0.0;
  }
  else {
    ff = ff/(double)10.0;
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      fg = (double)c[i][j]/(double)(i+1);
      ff = ff + fg;
    }
  }

  data = floor(ff);

  printf("data  = %d --- ", data); 

  if (data == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG, Answer => %d\n", ANS);
  }
}
