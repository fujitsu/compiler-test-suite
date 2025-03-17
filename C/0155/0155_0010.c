#include<stdio.h>
#define MAX 100


int main() {
  int i;
  float data[MAX], data2[MAX];
 
  for (i = 0; i < MAX; ++i) {
    data[i] = (float)i;
    data2[i] = (float)i * 10;
  }

  for (i = 1; i < MAX; ++i ) {
    data[i] = data[i - 1] + data2[i];
  }
  
  for (i = 0; i < MAX; ++i ) {
    printf ("%lf ", data[i]);
  }
  printf("\n");
}
