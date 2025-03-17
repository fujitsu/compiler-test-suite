#include <stdio.h>


#define MAX 100

void foo(float* data, float* data2, float* data3, int n) {
  int i;
  for (i=1; i<n-1; ++i) {
    data3[i] = data[i-1] + data[i] + data[i+1] + data2[i-1] + data2[i] + data2[i+1];
  }
}
int main() {
  int i;
  float data[MAX],data2[MAX],data3[MAX] = {0};

  for (i = 0; i < MAX; ++i) {
    data[i] = (float)i;
    data2[i] = (float)i + 1;
  }
  
  foo(data, data2, data3, MAX);

  for (i = 0; i < MAX-1; ++i ) {
    printf ("%lf ", data3[i]);
  }  
  printf("\n");
} 
