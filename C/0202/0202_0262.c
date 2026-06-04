#include <stdio.h>

int var;
int array[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

int result;

void test()
{
  for (; var++; ) {
    result = 1;
    break;
  }
}

void test_array(int s)
{
  for (;(var++) + array[s]; ) {
    result = 1;
    break;
  }
}

int main()
{
  result = 0;

  var = -1;
  test();
  if (var == 0) {
    printf("test: ok\n");
  } else {
    printf("test: NG\n");
  }

  var = -5;
  test_array(5);
  if (var == -4) {
    printf("test_array: ok\n");
  } else {
    printf("test_array: NG\n");
  }

  return 0;
}
