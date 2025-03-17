#include<stdio.h>
#define MAX 10

int main() {
  int i;
  double data[MAX] = { 10.11e+1, 11.11e+1, 12.22e+1, 13.33e+1, 14.44e+1, 15.55e+1, 16.66e+1, 17.77e+1, 18.88e+1, 19.99e+1 };
  double data2[MAX] = { 0 };

  for ( i = 1; i < MAX; ++i ) {
    data2[i] = data[i] + data[i -1];
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%f ", data2[i]);
  }
  printf("\n");
}
