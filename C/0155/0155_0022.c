#include<stdio.h>
#define MAX 100


int foo(float data[][MAX], float data2[][MAX]) {
  int i,j;

  for (i = 0; i < MAX; ++i) {
    for (j =1; j < MAX; ++j) {
      data2[i][j] = data[i][j] + data[i][j -1];
    }
  }
}
int main() {
  int i,j;
  float data[MAX][MAX];
  float data2[MAX][MAX] = {{0, 0}};

  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = (float)i + j; 
    }
  }  
  
  foo(data, data2);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%lf ", data[i][j]); 
    }
    printf("\n");
  }
}
