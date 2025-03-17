#include<stdio.h>
#define MAX 100


void foo(double data[][MAX], double data2[][MAX]) {
  int i,j;

  for (i = 0; i < MAX; ++i) {
    for (j = 2; j < MAX; ++j) {
      data[i][j] = data[i][j - 2] + data2[i][j];
    }
  }
}
int main() {
  int i,j;
  double data[MAX][MAX], data2[MAX][MAX];

  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = (double)i + j;
      data2[i][j] = (double)i * j;
    }
  }

  foo(data, data2);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%f ", data[i][j]); 
    }
    printf("\n");
  }
}
