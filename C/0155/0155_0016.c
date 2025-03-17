#include<stdio.h>
#define MAX 10

int main() {
  int i;
  long int data[] = { 10l, 11l, 12l, 13l, 14l, 15l, 16l, 17l, 18l, 19l };
  long int data2[MAX] = { 0 };

  for ( i = 1; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -1];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%ld ", data2[i]);
  }
  printf("\n");
}
