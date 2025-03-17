#include <stdio.h>

long int array_def[100], array_ref1[100], array_ref2[100];

int main() {
  long int i, tmp1, tmp2,tmp3, tmp4;

  for (i=0; i<100; i++) {
    array_ref1[i] = i;
    array_ref2[i] = i+1;
  }

  for (i=0; i<50; i++) {
    tmp1 = array_ref1[i] + 2;
    tmp2 = array_ref2[i] + 3;
    if (i < 25) {
      array_ref1[i] = 0;
      array_ref2[i] = 0;
    }
    tmp3 = array_ref1[i] + 4;
    tmp4 = array_ref2[i] + 5;
    array_def[i] = tmp1 + tmp2 + tmp3 + tmp4;
  }

  if (array_def[10] == 35) {
    printf("OK\n");
  } else {
    printf("NG %d\n",array_def[10]);
  }
  return 1;
}
