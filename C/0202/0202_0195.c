#include <stdio.h>

int *ptr;
int array[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

void test()
{
  (ptr++)[3];
}

void test_array(int s)
{
  (ptr++)[3] + array[s];
}

int main()
{
  ptr = &array[3];

  test();
  if (ptr == &array[4]) {
    printf("test: ok\n");
  } else {
    printf("test: NG\n");
  }

  test_array(5);
  if (ptr == &array[5]) {
    printf("test_array: ok\n");
  } else {
    printf("test_array: NG\n");
  }

  return 0;
}
