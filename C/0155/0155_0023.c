#include<stdio.h>
#define MAX 10

int main() {
  int i;
  int data[] = { 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 };
  int data2[MAX] = { 0 };

  for ( i = 1; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -1];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%d ", data2[i]);
  }
  printf("\n");
}
