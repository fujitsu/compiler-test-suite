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
struct S3 {
  char dummy[16];
  struct S2 mem;
  struct S1 array1[10];
  int array2[10][10];
};
struct S4 {
  char dummy[16];
  struct S3 mem;
  struct S2 array1[10];
  struct S1 array2[10][10];
  int array3[10][10][10];
};
struct S4 obj;
struct S3 array1[10];
struct S2 array2[10][10];
struct S1 array3[10][10][10];
int array4[10][10][10][10];

int test2111(int init)
{
  int result;

  array1[3].mem.mem.mem = init;
  result = array1[3].mem.mem.mem;

  return (result != init);
}

int test2112(int init)
{
  int result;

  array1[3].mem.array1[5] = init;
  result = array1[3].mem.array1[5];

  return (result != init);
}

int test2113(int init)
{
  int result;

  *(array1[3].mem.array1 + 5) = init;
  result = *(array1[3].mem.array1 + 5);

  return (result != init);
}

int test2121(int init)
{
  int result;

  array1[3].array1[5].mem = init;
  result = array1[3].array1[5].mem;

  return (result != init);
}

int test2122(int init)
{
  int result;

  array1[3].array2[5][7] = init;
  result = array1[3].array2[5][7];

  return (result != init);
}

int test2123(int init)
{
  int result;

  *(array1[3].array2[5] + 7) = init;
  result = *(array1[3].array2[5] + 7);

  return (result != init);
}

int test2131(int init)
{
  int result;

  (*(array1[3].array1 + 5)).mem = init;
  result = (*(array1[3].array1 + 5)).mem;

  return (result != init);
}

int test2132(int init)
{
  int result;

  (*(array1[3].array2 + 5))[7] = init;
  result = (*(array1[3].array2 + 5))[7];

  return (result != init);
}

int test2133(int init)
{
  int result;

  *(*(array1[3].array2 + 5) + 7) = init;
  result = *(*(array1[3].array2 + 5) + 7);

  return (result != init);
}

int main()
{
  if (test2111(10) != 0) {
    printf("test2111 ng\n");
  }
  if (test2112(10) != 0) {
    printf("test2112 ng\n");
  }
  if (test2113(10) != 0) {
    printf("test2113 ng\n");
  }
  if (test2121(10) != 0) {
    printf("test2121 ng\n");
  }
  if (test2122(10) != 0) {
    printf("test2122 ng\n");
  }
  if (test2123(10) != 0) {
    printf("test2123 ng\n");
  }
  if (test2131(10) != 0) {
    printf("test2131 ng\n");
  }
  if (test2132(10) != 0) {
    printf("test2132 ng\n");
  }
  if (test2133(10) != 0) {
    printf("test2133 ng\n");
  }

  printf("test end\n");

  return 0;
}
