#include<stdio.h>


#define MAX 100

int foo(long int data[][MAX], long int data2[][MAX]) {
  int i,j;

  for (i = 0; i < MAX; ++i) {
    for (j = 3; j < MAX; ++j) {
      data2[i][j] = data[i][j] + data[i][j - 3];
    }
  }
}
int main() {
  int i,j;
  long int data[MAX][MAX];
  long int data2[MAX][MAX] = {{0,0}};

  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = i + j; 
    }
  }  

  foo(data, data2);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%ld ", data2[i][j]); 
    }
    printf("\n");
  }
}
