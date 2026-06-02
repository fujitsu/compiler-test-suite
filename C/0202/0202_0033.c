#include <stdio.h>

struct S1 {
  char dummy[16];
  int mem;
};
struct S1 obj;
int array[10];

int test0001(int init)
{
  int result;

  obj.mem = init;
  result = obj.mem;

  return (result != init);
}

int test0002(int init)
{
  int result;

  array[3] = init;
  result = array[3];

  return (result != init);
}

int test0003(int init)
{
  int result;

  *(array + 3) = init;
  result = *(array + 3);

  return (result != init);
}

int main()
{
  if (test0001(10) != 0) {
    printf("test0001 ng\n");
  }
  if (test0002(10) != 0) {
    printf("test0002 ng\n");
  }
  if (test0003(10) != 0) {
    printf("test0003 ng\n");
  }

  printf("test end\n");

  return 0;
}
