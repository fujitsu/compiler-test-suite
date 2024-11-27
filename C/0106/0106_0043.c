#include <stdio.h>
void sub(double *);

int main() {
  int i;
  double array2[20];
  for (i=0; i<20; i++) {
    array2[i] = 3.0;
  }
  sub(array2);
  return 0;
}

void sub (double *array2) {
  int i;
  double array1[20], ans[20];

  for (i=0; i<20; i++) {
    array1[i] = 0.0;
  }

  for (i=0; i<16; i++) {
    ans[i] = array1[i] / array2[i];
  }
  if (ans[3] == 0.0) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
