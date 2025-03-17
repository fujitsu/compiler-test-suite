#include<stdio.h>

#define MAX 100
int main() {
  int i;
  double data[MAX];
  double data2[MAX] = { 0 };

  for (i = 0; i < MAX; ++i) {
    data[i] = (double)i;
  }

  for ( i = 2; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -2];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%f ", data2[i]);
  }
  printf("\n");

}
