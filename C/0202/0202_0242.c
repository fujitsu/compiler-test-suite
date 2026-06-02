#include <stdio.h>

int var;
int array[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

int cond;

void test()
{
  cond ? (var++) : 0;
}

void test_array(int s)
{
  cond ? ((var++) + array[s]) : 0;
}

int main()
{
  var = 3;
  cond = 1;

  test();
  if (var == 4) {
    printf("test: ok\n");
  } else {
    printf("test: NG\n");
  }

  test_array(5);
  if (var == 5) {
    printf("test_array: ok\n");
  } else {
    printf("test_array: NG\n");
  }

  return 0;
}
