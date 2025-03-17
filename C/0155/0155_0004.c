

#include<stdio.h>
#define MAX 100

void foo(long int data[][MAX]) {
  int i,j;
  for (i = 0; i < MAX; ++i) {
    for (j = 1; j < MAX; ++j) {
      data[i][j] = data[i][j-1] + 2;
    }
  }
}
int main() {
  int i,j;
  long int data[MAX][MAX];
  
  for (i = 0; i < MAX; ++i) {
    for (j = 0; j < MAX; ++j) {
      data[i][j] = (long int)i + j; 
    }
  }

  foo(data);

  for (i = 0; i < MAX; i+=10) {
    for (j = 0; j < MAX; j+=10) {
      printf ("%ld ", data[i][j]); 
    }
    printf("\n");
  }

}
