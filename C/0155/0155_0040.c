#include<stdio.h>

#define MAX 100
int main() {
  int i;
  long int data[MAX];
  long int data2[MAX] = { 0 };

  for (i = 0; i < MAX; ++i) {
    data[i] = (long int)i;
  }

  for ( i = 2; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -2];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%ld ", data2[i]);
  }
  printf("\n");

}
