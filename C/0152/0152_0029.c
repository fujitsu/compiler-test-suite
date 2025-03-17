

#include <stdio.h>

int main() {
  long int array_def[100], array_ref1[100], array_ref2[100];
  long int i;
  long int tmp1, tmp2;
  
  
  for (i=0; i<100; i++) {
    array_ref1[i] = i;
    array_ref2[i] = i+1;
    tmp1 = array_ref1[i] + array_ref2[i];
    tmp2 = array_ref1[i] + array_ref2[i];
    array_def[i] = tmp1 + tmp2;
  }

  printf("OK\n");

  return 1;
}
