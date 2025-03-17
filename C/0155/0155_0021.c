#include<stdio.h>
#define MAX 100


int foo(double data[][MAX], double data2[][MAX]) {
  int i,j;

  for (i = 0; i < MAX; ++i) {
    for (j =1; j < MAX; ++j) {
      data2[i][j] = data[i][j] + data[i][j -1];
    }
  }
}
int main() {
  int i,j;
  double data[MAX][MAX];
  double data2[MAX][MAX] = {{0, 0}};

  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = (double)i + j; 
    }
  }  
  
  foo(data, data2);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%f ", data2[i][j]); 
    }
    printf("\n");
  }
}
