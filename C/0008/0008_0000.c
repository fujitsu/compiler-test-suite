#include <stdio.h>
#define N 100

static void check2(short int a[N], short int b[N][N])
{
  int i;
  short int s;
  s = 0;
  for(i=0;i<N;i++) { s = s + a[i]; }
  printf("%d %d %d\n", s, b[0][0], b[N-1][N-1]);
}

static void check4(int a[N], int b[N][N])
{
  int i;
  int s;
  s = 0;
  for(i=0;i<N;i++) { s = s + a[i]; }
  printf("%d %d %d\n", s, b[0][0], b[N-1][N-1]);
}

static void check8(long long int a[N], long long int b[N][N])
{
  int i;
  long long int s;
  s = 0;
  for(i=0;i<N;i++) { s = s + a[i]; }
  printf("%lld %lld %lld\n", s, b[0][0], b[N-1][N-1]);
}
int main()
{
  int i,j;
  short int a2[N];
  short int b2[N][N];
  int a4[N];
  int b4[N][N];
  long long int a8[N];
  long long int b8[N][N];

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a2[j] = i;
      b2[i][j] = a2[j] + 1;
    }
  }
  check2(a2, b2);

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a4[j] = i;
      b4[i][j] = a4[j] + 1;
    }
  }
  check4(a4, b4);

  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      a8[j] = i;
      b8[i][j] = a8[j] + 1;
    }
  }
  check8(a8, b8);

  return 0;
}
