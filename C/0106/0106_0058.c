#include <stdio.h>
void sub(unsigned int *);

int main() {
  int i;
  unsigned int array2[20];
  for (i=0; i<20; i++) {
    array2[i] = 1;
  }
  sub(array2);
  return 0;
}

void sub (unsigned int *array2) {
  int i;
  unsigned int array1[20], ans[20];

  for (i=0; i<20; i++) {
    array1[i] = 0;
  }

  for (i=0; i<16; i++) {
    ans[i] = (array1[i] | array2[i]);
  }
  if (ans[3] == 1) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}