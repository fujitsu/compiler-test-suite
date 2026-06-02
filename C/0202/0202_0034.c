#include <stdio.h>

struct S1 {
  char dummy[16];
  int mem;
};
struct S2 {
  char dummy[16];
  struct S1 mem;
  int array1[10];
};
struct S2 obj;
struct S1 array1[10];
int array2[10][10];

int test0011(int init)
{
  int result;

  obj.mem.mem = init;
  result = obj.mem.mem;

  return (result != init);
}

int test0012(int init)
{
  int result;

  obj.array1[3] = init;
  result = obj.array1[3];

  return (result != init);
}

int test0013(int init)
{
  int result;

  *(obj.array1 + 3) = init;
  result = *(obj.array1 + 3);

  return (result != init);
}

int test0021(int init)
{
  int result;

  array1[3].mem = init;
  result = array1[3].mem;

  return (result != init);
}

int test0022(int init)
{
  int result;

  array2[3][5] = init;
  result = array2[3][5];

  return (result != init);
}

int test0023(int init)
{
  int result;

  *(array2[3] + 5) = init;
  result = *(array2[3] + 5);

  return (result != init);
}

int test0031(int init)
{
  int result;

  (*(array1 + 3)).mem = init;
  result = (*(array1 + 3)).mem;

  return (result != init);
}

int test0032(int init)
{
  int result;

  (*(array2 + 3))[5] = init;
  result = (*(array2 + 3))[5];

  return (result != init);
}

int test0033(int init)
{
  int result;

  *(*(array2 + 3) + 5) = init;
  result = *(*(array2 + 3) + 5);

  return (result != init);
}

int main()
{
  if (test0011(10) != 0) {
    printf("test0011 ng\n");
  }
  if (test0012(10) != 0) {
    printf("test0012 ng\n");
  }
  if (test0013(10) != 0) {
    printf("test0013 ng\n");
  }
  if (test0021(10) != 0) {
    printf("test0021 ng\n");
  }
  if (test0022(10) != 0) {
    printf("test0022 ng\n");
  }
  if (test0023(10) != 0) {
    printf("test0023 ng\n");
  }
  if (test0031(10) != 0) {
    printf("test0031 ng\n");
  }
  if (test0032(10) != 0) {
    printf("test0032 ng\n");
  }
  if (test0033(10) != 0) {
    printf("test0033 ng\n");
  }

  printf("test end\n");

  return 0;
}
