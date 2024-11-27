

#include <stdio.h>
#define N 1000

void f (float a[N][2], float b[N][11], int index1[N]) {
  
  for (int i = 0; i < N; i++) {
    int ii = index1[i];
    a[ii][1] = a[ii][1] - b[ii][5];
  }
}

int main()
{
  float a[N][2], b[N][11];
  int index1[N];
  int success = 1;
  for (int i = 0; i < N; i++) {
    for (int j = 0; j < 2; j++)
      a[i][j] = 3;
    for (int j = 0; j < 6; j++)
      b[i][j] = 2;
    index1[i] = i;
  }

  f (a, b, index1);
  
  for (int i = 0; i < N; i++) {
    if (! (a[N-1][1] < 1 + 0.1) && (1 - 0.1 < a[N-1][1])) {
      success = 0;
    }
  }

  if (success == 1)
    printf ("OK");
  else
    printf ("NG");

  return 0;
}
