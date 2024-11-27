


#include <stdio.h>
#include <math.h>
#define N 1000

void f (int n, float a[n][N], float b[n][n], int m, int index1[N]) {
  
  for (int i = 0; i < n; i++) {
    int ii = index1[i];
    a[m][ii] = a[m][ii] * 2;
    b[m][ii] = b[m][ii] * 3;
  }
}

int main() {
  float a[N][N], b[N][N];
  int index1[N];

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < N; j++) {
      a[i][j] = 2;
      b[i][j] = 3;
    }

    index1[i] = i;
  }

  f(N, a, b, 2, index1);

  if ((a[1][0] < pow (2, N + 1) + 0.1) && (pow (2, N + 1) - 0.1 < a[1][0]))
    printf ("OK");
  else
    printf ("NG");

  return 0;
}
