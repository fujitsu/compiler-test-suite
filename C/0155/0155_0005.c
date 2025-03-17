

#include<stdio.h>
#define MAX 100

void foo(double data[][MAX]) {
  int i,j;
  for (i = 0; i < MAX; ++i) {
    for (j = 1; j < MAX; ++j) {
      data[i][j] = data[i][j-1] + 2;
    }
  }
}
int main() {
  int i,j;
  double data[MAX][MAX];
  
  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = (double)i + j; 
    }
  }

  foo(data);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%f ", data[i][j]); 
    }
    printf("\n");
  }

}
