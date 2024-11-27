


#include <stdio.h>
#define N 1000

void f (int n, float a[n][2], float b[n][11], int index1[n]) {
  
  for (int i = 0; i < n; i++) {
    int ii = index1[i];
    a[ii][1] = a[ii][1] - b[ii][5];
  }
}

int main() {
  float a[N][2], b[N][11];
  int index1[N];
  int success = 1;
  
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < 2; j++)
      a[j][i] = 3;
    for (int j = 0; j < 11; j++)
      b[j][i] = 2;
  }

  for (int i = 0; i < N; i++)
    index1[i] = i;

  f (N, a, b, index1);

  for (int i = 0; i < N; i++) {
    if (! (a[N-1][1] < 1 + 0.1) && (1 - 0.1 < a[N-1][1]))
      success = 0;
  }

  if (success == 1)
    printf("OK");
  else
    printf("NG");    

  return 0;
}
