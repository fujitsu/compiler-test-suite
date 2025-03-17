

#include <stdio.h>

int main() {
  long int array_def[100], array_ref1[100], array_ref2[100];
  long int i;
  
  for (i=0; i<100; i++) {
    array_ref1[i] = i;
    array_ref2[i] = i+1;
  }

  
  for (i=0; i<50; i++) {
    array_def[i] = array_ref1[i] + array_ref2[i] +
      array_ref1[i] + array_ref2[i];
  }
  
  printf("OK\n");

  return 1;
}
