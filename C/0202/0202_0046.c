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

int test3311(int init)
{
  int result;

  (*(*(array2 + 3) + 5)).mem.mem = init;
  result = (*(*(array2 + 3) + 5)).mem.mem;

  return (result != init);
}

int test3312(int init)
{
  int result;

  (*(*(array2 + 3) + 5)).array1[7] = init;
  result = (*(*(array2 + 3) + 5)).array1[7];

  return (result != init);
}

int test3313(int init)
{
  int result;

  *((*(*(array2 + 3) + 5)).array1 + 7) = init;
  result = *((*(*(array2 + 3) + 5)).array1 + 7);

  return (result != init);
}

int test3321(int init)
{
  int result;

  (*(*(array3 + 3) + 5))[7].mem = init;
  result = (*(*(array3 + 3) + 5))[7].mem;

  return (result != init);
}

int test3322(int init)
{
  int result;

  (*(*(array4 + 3) + 5))[7][9] = init;
  result = (*(*(array4 + 3) + 5))[7][9];

  return (result != init);
}

int test3323(int init)
{
  int result;

  *((*(*(array4 + 3) + 5))[7] + 9) = init;
  result = *((*(*(array4 + 3) + 5))[7] + 9);

  return (result != init);
}

int test3331(int init)
{
  int result;

  (*(*(*(array3 + 3) + 5) + 7)).mem = init;
  result = (*(*(*(array3 + 3) + 5) + 7)).mem;

  return (result != init);
}

int test3332(int init)
{
  int result;

  (*(*(*(array4 + 3) + 5) + 7))[9] = init;
  result = (*(*(*(array4 + 3) + 5) + 7))[9];

  return (result != init);
}

int test3333(int init)
{
  int result;

  *(*(*(*(array4 + 3) + 5) + 7) + 9) = init;
  result = *(*(*(*(array4 + 3) + 5) + 7) + 9);

  return (result != init);
}

int main()
{
  if (test3311(10) != 0) {
    printf("test3311 ng\n");
  }
  if (test3312(10) != 0) {
    printf("test3312 ng\n");
  }
  if (test3313(10) != 0) {
    printf("test3313 ng\n");
  }
  if (test3321(10) != 0) {
    printf("test3321 ng\n");
  }
  if (test3322(10) != 0) {
    printf("test3322 ng\n");
  }
  if (test3323(10) != 0) {
    printf("test3323 ng\n");
  }
  if (test3331(10) != 0) {
    printf("test3331 ng\n");
  }
  if (test3332(10) != 0) {
    printf("test3332 ng\n");
  }
  if (test3333(10) != 0) {
    printf("test3333 ng\n");
  }

  printf("test end\n");

  return 0;
}
