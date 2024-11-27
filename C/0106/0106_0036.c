#include <stdio.h>
void sub(int *);

int main() {
  int i, array1[20];
  for (i=0; i<20; i++) {
    array1[i] = 3;
  }
  sub(array1);
  return 0;
}

void sub (int *array1) {
  int i;
  int array2[20], ans[20];

  for (i=0; i<20; i++) {
    array2[i] = 0;
  }

  for (i=0; i<16; i++) {
    ans[i] = array1[i] + array2[i];
  }
  if (ans[3] == 3) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}
