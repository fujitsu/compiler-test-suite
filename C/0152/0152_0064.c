#include <stdio.h>

long int array_def[100], array_ref1[100], array_ref2[100];

int main() {
  long int i;

  for (i=0; i<100; i++) {
    array_ref1[i] = i;
    array_ref2[i] = i+1;
  }

  for (i=0; i<50; i++) {
    if (array_ref1[1] > 0) {
      array_def[i] = array_ref1[1] + array_ref2[i];
    } else {
      array_def[i] = 0;
    }
    array_ref1[1] = array_ref2[i];
  }

  if (array_def[10] == 21) {
    printf("OK\n");
  } else {
    printf("NG %d\n",array_def[10]);
  }
  return 1;
}
