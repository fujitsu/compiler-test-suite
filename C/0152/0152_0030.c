

#include <stdio.h>

int main() {
  long int array_def, array_ref1, array_ref2;
  long int i;
  long int tmp1, tmp2;
  
  
  for (i=0; i<100; i++) {
    array_ref1 = i;
    array_ref2 = i+1;
    tmp1 = array_ref1 + array_ref2;
    tmp2 = array_ref1 + array_ref2;
    array_def = tmp1 + tmp2;
  }

  if (array_def == 398) {
    printf("OK\n");
  } else {
    printf("NG(%d)\n",array_def);
  }
  return 1;
}
