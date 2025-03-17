#include<stdio.h>


#define MAX 100
int main() {
  int i;
  float data[MAX];

  for (i = 0; i < MAX; ++i) {
    data[i] = (float)i;
  }
  
  for (i = 1; i < MAX; ++i) {
    data[i] = data[i - 1] + 2;
  }

  for (i = 0; i < MAX; ++i ) {
    printf ("%lf ", data[i]);
  }
  printf("\n");

}
