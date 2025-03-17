#include <stdio.h>

static void sub(long int *array_ref1,
		long int *array_ref2,
		long int *array_def);

int main() {
  long int array_def[100], array_ref1[100], array_ref2[100];
  long int i;

  for (i=0; i<100; i++) {
    array_ref1[i] = i;
    array_ref2[i] = i+1;
  }

  sub(array_ref1, array_ref2, array_def);

  if (array_def[10] == 35) {
    printf("OK\n");
  } else {
    printf("NG %d\n",array_def[10]);
  }
  return 1;
}

static void sub(long int *array_ref1,
                long int *array_ref2,
                long int *array_def) {
  long int i, tmp1, tmp2, tmp3, tmp4;

  for (i=0; i <100; i++) {
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
}
