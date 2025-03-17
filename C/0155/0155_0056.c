#include <stdio.h>


#define MAX 100

void foo(long int* data, long int* data2, long int* data3, int n) {
  int i;
  for (i=1; i<n-1; ++i) {
    data3[i] = data[i-1] + data[i] + data[i+1] + data2[i-1] + data2[i] + data2[i+1];
  }
}
int main() {
  int i;
  long int data[MAX],data2[MAX],data3[MAX] = {0};

  for (i = 0; i < MAX; ++i) {
    data[i] = (long int)i;
    data2[i] = (long int)i + 1;
  }
  
  foo(data, data2, data3, MAX);

  for (i = 0; i < MAX-1; ++i ) {
    printf ("%ld ", data3[i]);
  }  
  printf("\n");
} 
