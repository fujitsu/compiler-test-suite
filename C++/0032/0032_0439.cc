#include <cstdio>

int var;
int array[10] = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };

void test()
{
  throw var++;
}

void test_array(int s)
{
  throw var++ + array[s];
}

int main()
{
  var = 3;

  try {
    test();
  }
  catch (int result) {
    if (var == 4) {
      printf("test: ok\n");
    } else {
      printf("test: NG\n");
    }
  }
  catch (...) {
    printf("test: NG(invalid thrown object type\n");
  }

  try {
    test_array(5);
  }
  catch (int result) {
    if (var == 5) {
      printf("test_array: ok\n");
    } else {
      printf("test_array: NG\n");
    }
  }
  catch (...) {
    printf("test: NG(invalid thrown object type\n");
  }

  return 0;
}
