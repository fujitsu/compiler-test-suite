#include <stdio.h>
#define N 100

static void check4(float a[N], float b[N][N])
{
  int i;
  float s;
  s = 0;
  for(i=0;i<N;i++) { s = s + a[i]; }
  printf("%f %f %f\n", s, b[0][0], b[N-1][N-1]);
}

static void check8(double a[N], double b[N][N])
{
  int i;
  double s;
  s = 0;
  for(i=0;i<N;i++) { s = s + a[i]; }
  printf("%lf %lf %lf\n", s, b[0][0], b[N-1][N-1]);
}

int lto_sub_1()
{
  int i,j;
  float a4[N];
  float b4[N][N];
  double a8[N];
  double b8[N][N];

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a4[j] = (float)i;
      b4[i][j] = a4[j] + 1.0;
    }
  }
  check4(a4, b4);

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a8[j] = (double)i;
      b8[i][j] = a8[j] + 1.0;
    }
  }
  check8(a8, b8);

  return 0;
}
