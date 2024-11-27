
#include <stdio.h>
#define N 1000

void f (int n, float a[n][2], float b[n][11], int index1[n]) {
  
  for (int i = 0; i < n; i ++){
    int ii = index1[i];
    a[ii][1] = a[ii][1] * 2;
    b[ii][5] = b[ii][5] * 3;
  }
}

int main() {
  float a[N][2];
  float b[N][11];
  int index1[N];

  int success = 1;
  
  for (int i = 0; i < N; i++)
    index1[i] = i;

  for (int i = 0; i < N; i++) {
    a[i][0] = 3;
    a[i][1] = 3;
  }

  for (int i = 0; i < N; i++) {
    for (int j = 0; j < 6; j++) {
      b[i][j] =2;
    }
  }

  f (N, a, b, index1);

  for (int i = 0; i < N; i++) {
    if (! (a[N-1][1] < 6 + 0.1) && (6 - 0.1 < a[N-1][1])){
      success = 0;
    }
  }

  if (success == 1)
    printf ("OK");
  else
    printf ("NG");
}

