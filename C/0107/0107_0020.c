

#include <stdio.h>
#define N 1000

void f (int n, int m, float a[N][N], int index1[N]) {
  

  for (int i = 0; i < n; i++) {
    int ii = index1[i];
    a [ii][m] = 3;
  }
}

int main() {
  float a[N][N];
  int index1[N];

  for (int i = 0; i < N; i++){
    index1[i] = i;
  }

  for (int i = 0; i < N; i++)
    for (int j = 0; j < N; j++)
      a[i][j] = -100;

  f (N, 2, a, index1);

  int success = 1;

  for (int i = 0; i < N; i++) {
    if (! (a[i][2] < 3 + 0.1) && (3 - 0.1 < a[i][2])){
      success = 0;
    }
  }

  if (success == 1)
    printf ("OK");
  else
    printf ("NG");
}
