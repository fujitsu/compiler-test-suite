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

int test3211(int init)
{
  int result;

  (*(array2 + 3))[5].mem.mem = init;
  result = (*(array2 + 3))[5].mem.mem;

  return (result != init);
}

int test3212(int init)
{
  int result;

  (*(array2 + 3))[5].array1[7] = init;
  result = (*(array2 + 3))[5].array1[7];

  return (result != init);
}

int test3213(int init)
{
  int result;

  *((*(array2 + 3))[5].array1 + 7) = init;
  result = *((*(array2 + 3))[5].array1 + 7);

  return (result != init);
}

int test3221(int init)
{
  int result;

  (*(array3 + 3))[5][7].mem = init;
  result = (*(array3 + 3))[5][7].mem;

  return (result != init);
}

int test3222(int init)
{
  int result;

  (*(array4 + 3))[5][7][9] = init;
  result = (*(array4 + 3))[5][7][9];

  return (result != init);
}

int test3223(int init)
{
  int result;

  *((*(array4 + 3))[5][7] + 9) = init;
  result = *((*(array4 + 3))[5][7] + 9);

  return (result != init);
}

int test3231(int init)
{
  int result;

  (*((*(array3 + 3))[5] + 7)).mem = init;
  result = (*((*(array3 + 3))[5] + 7)).mem;

  return (result != init);
}

int test3232(int init)
{
  int result;

  (*((*(array4 + 3))[5] + 7))[9] = init;
  result = (*((*(array4 + 3))[5] + 7))[9];

  return (result != init);
}

int test3233(int init)
{
  int result;

  *(*((*(array4 + 3))[5] + 7) + 9) = init;
  result = *(*((*(array4 + 3))[5] + 7) + 9);

  return (result != init);
}

int main()
{
  if (test3211(10) != 0) {
    printf("test3211 ng\n");
  }
  if (test3212(10) != 0) {
    printf("test3212 ng\n");
  }
  if (test3213(10) != 0) {
    printf("test3213 ng\n");
  }
  if (test3221(10) != 0) {
    printf("test3221 ng\n");
  }
  if (test3222(10) != 0) {
    printf("test3222 ng\n");
  }
  if (test3223(10) != 0) {
    printf("test3223 ng\n");
  }
  if (test3231(10) != 0) {
    printf("test3231 ng\n");
  }
  if (test3232(10) != 0) {
    printf("test3232 ng\n");
  }
  if (test3233(10) != 0) {
    printf("test3233 ng\n");
  }

  printf("test end\n");

  return 0;
}
