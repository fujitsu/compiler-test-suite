#include<stdio.h>
#include<stdlib.h>

#define MAX 100
int main() {
  int i;
  int data[MAX];
  int data2[MAX] = { 0 };

  for (i = 0; i < MAX; ++i) {
    data[i] = i;
  }

  for ( i = 2; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -2];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%d ", data2[i]);
  }
  printf("\n");

}
