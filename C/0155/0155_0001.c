#include<stdio.h>


#define MAX 100
int main() {
  int i;
  double data[MAX];

  for (i = 0; i < MAX; ++i) {
    data[i] = (double)i;
  }
  
  for (i = 1; i < MAX; ++i) {
    data[i] = data[i - 1] + 2;
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%f ", data[i]);
  }
  printf("\n");

}
