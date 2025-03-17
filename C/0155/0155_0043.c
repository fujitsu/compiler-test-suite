#include<stdio.h>

#define MAX 100

int foo(int data[][MAX], int data2[][MAX]) {
  int i,j;

  for (i = 0; i < MAX; ++i) {
    for (j = 2; j < MAX; ++j) {
      data2[i][j] = data[i][j] + data[i][j - 2];
    }
  }
}
int main() {
  int i,j;
  int data[MAX][MAX];
  int data2[MAX][MAX] = {{0, 0}};

  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = i + j; 
    }
  }  

  foo(data, data2);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%d ", data2[i][j]); 
    }
    printf("\n");
  }

}
