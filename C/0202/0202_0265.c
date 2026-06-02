#include <stdio.h>

int var;
int array[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

int test()
{
  int value = var++;

  return value;
}

int test_array(int s)
{
  int value = (var++) + array[s];

  return value;
}

int main()
{
  int result;

  var = 3;

  result = test();
  if (var == 4) {
    printf("test: ok\n");
  } else {
    printf("test: NG\n");
  }

  result = test_array(5);
  if (var == 5) {
    printf("test_array: ok\n");
  } else {
    printf("test_array: NG\n");
  }

  return 0;
}
