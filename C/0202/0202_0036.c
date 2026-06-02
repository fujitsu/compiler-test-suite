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
struct S3 obj;
struct S2 array1[10];
struct S1 array2[10][10];
int array3[10][10][10];

int test0211(int init)
{
  int result;

  array1[3].mem.mem = init;
  result = array1[3].mem.mem;

  return (result != init);
}

int test0212(int init)
{
  int result;

  array1[3].array1[5] = init;
  result = array1[3].array1[5];

  return (result != init);
}

int test0213(int init)
{
  int result;

  *(array1[3].array1 + 5) = init;
  result = *(array1[3].array1 + 5);

  return (result != init);
}

int test0221(int init)
{
  int result;

  array2[3][5].mem = init;
  result = array2[3][5].mem;

  return (result != init);
}

int test0222(int init)
{
  int result;

  array3[3][5][7] = init;
  result = array3[3][5][7];

  return (result != init);
}

int test0223(int init)
{
  int result;

  *(array3[3][5] + 7) = init;
  result = *(array3[3][5] + 7);

  return (result != init);
}

int test0231(int init)
{
  int result;

  (*(array2[3] + 5)).mem = init;
  result = (*(array2[3] + 5)).mem;

  return (result != init);
}

int test0232(int init)
{
  int result;

  (*(array3[3] + 5))[7] = init;
  result = (*(array3[3] + 5))[7];

  return (result != init);
}

int test0233(int init)
{
  int result;

  *(*(array3[3] + 5) + 7) = init;
  result = *(*(array3[3] + 5) + 7);

  return (result != init);
}

int main()
{
  if (test0211(10) != 0) {
    printf("test0211 ng\n");
  }
  if (test0212(10) != 0) {
    printf("test0212 ng\n");
  }
  if (test0213(10) != 0) {
    printf("test0213 ng\n");
  }
  if (test0221(10) != 0) {
    printf("test0221 ng\n");
  }
  if (test0222(10) != 0) {
    printf("test0222 ng\n");
  }
  if (test0223(10) != 0) {
    printf("test0223 ng\n");
  }
  if (test0231(10) != 0) {
    printf("test0231 ng\n");
  }
  if (test0232(10) != 0) {
    printf("test0232 ng\n");
  }
  if (test0233(10) != 0) {
    printf("test0233 ng\n");
  }

  printf("test end\n");

  return 0;
}
