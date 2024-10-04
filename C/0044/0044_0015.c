struct S {
  char dummy;
  long array[10] __attribute__((aligned(1), packed));
} ;

struct S obj;

void test()
{
  obj.array[3] = 5;
}

#include <stdio.h>

int main()
{
  test();

  if (obj.array[3] == 5) {
    printf("test ok\n");
  } else {
    printf("test ng: %d\n", obj.array[3]);
  }

  return 0;
}
