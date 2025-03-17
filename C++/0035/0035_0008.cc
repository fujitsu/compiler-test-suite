#include <stdio.h>

int *a;
int *b;

void sub(void) {
  int i;
  for (i = 0; i < 10; ++i) {
    *a = *a + 2;
    *b = *b + 4;
    ++a;
    ++b;
  }
}

int main(void) {
  int array[100];
  int i, res;
  const int ans = 0;

  for (i = 0; i < 100; ++i) {
    array[i] = 0;
  }
  a = array;
  b = array;
  sub();
  res = 0;
  for (i = 0; i < 100; ++i) {
    res = res + array[i];
  }

  if (res == ans) {
    printf("test: couldn't optimize by by using restp\n");
  } else {
    printf("test: could optimize by by using restp\n");
  }
  return 0;
}
