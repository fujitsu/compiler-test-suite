#include <stdio.h>

struct S {
  int mem;
};

struct S *ptr;
struct S array[10] = { {0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}, {8}, {9} };

void test()
{
  (ptr++)->mem;
}

void test_array(int s)
{
  (ptr++)->mem + array[s].mem;
}

int main()
{
  ptr = &array[3];

  test();
  if (ptr->mem == 4) {
    printf("test: ok\n");
  } else {
    printf("test: NG\n");
  }

  test_array(5);
  if (ptr->mem == 5) {
    printf("test_array: ok\n");
  } else {
    printf("test_array: NG\n");
  }

  return 0;
}
