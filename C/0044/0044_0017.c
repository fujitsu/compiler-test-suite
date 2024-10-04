typedef long  __attribute__((aligned(1))) LONGtype;

struct S {
  char dummy;
  LONGtype array[10][10];
} ;

typedef struct S Stype;

Stype obj[10];

void test()
{
  obj[2].array[3][7] = 5;
}

#include <stdio.h>

int main()
{
  test();

  if (obj[2].array[3][7] == 5) {
    printf("test ok\n");
  } else {
    printf("test ng: %d\n", obj[2].array[3][7]);
  }

  return 0;
}
