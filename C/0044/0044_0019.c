struct S {
  char dummy;
  long array[10];
} __attribute__((aligned(2)));

typedef struct S Stype __attribute__((aligned(1)));

struct SS {
  char dummy;
  Stype array[10];
};

struct SS obj;

void test()
{
  obj.array[3].array[5] = 7;
}

#include <stdio.h>

int main()
{
  test();

  if (obj.array[3].array[5] == 7) {
    printf("test ok\n");
  } else {
    printf("test ng: %d\n", obj.array[3].array[5]);
  }

  return 0;
}
