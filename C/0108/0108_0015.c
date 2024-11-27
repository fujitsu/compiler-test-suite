#include <stdio.h>
#include <math.h>
#define N 10
int array1[N],array2[N];
int main() {
  int i;
  int res[N];

  for (i=0; i<N; i++) {
    array1[i]=i;
    array2[i]=i+1;
  }
  
  for (i=0; i<N; i++) {
    res[i] = (array1[i] > array2[i]) ? 1 : 2;
  }

  for (i=0; i<N; i++) {
    if (res[i] != 2) {
      printf("res[%d] = %d\n", i, res[i]);
    }
  }
  printf("OK\n");
}
