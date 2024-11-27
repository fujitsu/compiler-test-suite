#include <stdio.h>


#define N 10
#define ANS 75440
static void init_data();
static int  sum_of_data();

float r4a2[N][N];
double r8a2[N][N];
long double r16a2[N][N];
int main()
{
  int i,j;
  int d0, d1;
  int res;

  init_data();

  d0 = 0;
  d1 = 1;

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      r4a2[i][j] = r4a2[i][j] + r4a2[i][j] + 0.0F;
      r8a2[i][j] = r8a2[i][j] + r8a2[i][j] + 0.0;
      r16a2[i][j] = r16a2[i][j] + r16a2[i][j] + 0.0L;
      r4a2[i][j] = r4a2[i][j] + r4a2[i][j] + 1.0F;
      r8a2[i][j] = r8a2[i][j] + r8a2[i][j] + 1.0;
      r16a2[i][j] = r16a2[i][j] + r16a2[i][j] + 1.0L;
      r4a2[i][j] = r4a2[i][j] + r4a2[i][j] - 0.0F;
      r8a2[i][j] = r8a2[i][j] + r8a2[i][j] - 0.0;
      r16a2[i][j] = r16a2[i][j] + r16a2[i][j] - 0.0L;
      r4a2[i*d1][j] = r4a2[i*d1][j] + r4a2[i*d1][j] + 0.0F;
      r8a2[i+d0][j*d1] = r8a2[i+d0][j*d1] + r8a2[i+d0][j*d1] + 0.0;
      r16a2[i*d1+d0][j*d1] = r16a2[i*d1+d0][j*d1] + r16a2[i*d1+d0][j*d1] + 0.0L;
      r4a2[i*d1][j] = r4a2[i*d1][j] + r4a2[i*d1][j] - 1.0F;
      r8a2[i*d0][j*d1] = r8a2[i*d0][j*d1] + r8a2[i*d0][j*d1] - 1.0;
      r16a2[i*d1+d0][j*d1] = r16a2[i*d1+d0][j*d1] + r16a2[i*d1+d0][j*d1] - 1.0L;
      r4a2[i*d1][j*d1] = r4a2[i*d1][j*d1] + r4a2[i+d1-1][j*d1] + 0.0F;
      r8a2[i+d1-1][j*d1] = r8a2[i*d1][j*d1] + r8a2[i+d1-1][j*d1] + 0.0;
      r16a2[i*d1-d0][j*d1] = r16a2[i*d1-d0][j*d1] + r16a2[i*d1-d0][j*d1] + 0.0L;
    }
  }

  res = sum_of_data();



  if (res == ANS) {
    printf("OK\n");
  }
  else {
    printf("NG\n");
  }
}

static void init_data()
{
  int i,j;

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      r4a2[i][j] = (float)i/(float)N;
      r8a2[i][j] = (double)i/(double)N;
      r16a2[i][j] = (long double)((float)(i+1)/(float)(j+1))/(long double)N;
    }
  }
}

static int sum_of_data()
{
  int i,j;
  float r4sum=0.0F;
  double r8sum=0.0;
  long double r16sum=0.0L;
  int  res;

  for (i=0; i<N; i++) {
    for (j=0; j<N; j++) {
      r4sum = r4sum + r4a2[i][j];
      r8sum = r8sum + r8a2[i][j];
      r16sum = r16sum + r16a2[i][j];
    }
  }



  res = (int)((long double)r4sum + (long double)r8sum + r16sum);
  return res;
}
