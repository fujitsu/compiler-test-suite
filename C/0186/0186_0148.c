#include <stdio.h>

void func(long int *array_a, long int *array_b, long int count) {
  long int i;
  for (i=0; i<count; i++) {
    array_b[i] = array_a[i];
  }
  if (array_b[99] != 99) {
    printf("NG %d\n", array_b[99]);
  }
  printf("end\n");
}

int main() {
  long int array_a[100], array_b[100];
  long int i;
  for (i=0; i<100; i++) {
    array_a[i] = i;
  }
  func(array_a, array_b, 100);
  return 0;
}
