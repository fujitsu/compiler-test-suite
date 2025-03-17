#include <stdio.h>
#include <stdlib.h>
#define ANS 2

void init(int *x) {
  int i;
  for(i=0;i<10;i++) {
    x[i] = 1;
  }
}

void test(int *x) {
  int i;
  for(i=0;i<10;i++) {
    if (x[i] != ANS) {
      printf("NG\n");
    }
  }
  printf("OK\n");
}

int main()
{
  int *x;
  int i;
  
  x = (int*)malloc(sizeof(int) * 10);

  init(x);

  for(i=0;i<10;i++) {
    x[i] += 1;
  }
  test(x);
  free(x);
  return 0;
}
