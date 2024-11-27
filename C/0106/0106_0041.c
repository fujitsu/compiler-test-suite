#include <stdio.h>
void sub(int *);

int main() {
  int i, array2[20];
  for (i=0; i<20; i++) {
    array2[i] = 1;
  }
  sub(array2);
  return 0;
}

void sub (int *array2) {
  int i;
  int array1[20], ans[20];

  for (i=0; i<20; i++) {
    array1[i] = -1;
  }

  for (i=0; i<16; i++) {
    ans[i] = (array1[i] & array2[i]);
  }
  if (ans[3] == 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
