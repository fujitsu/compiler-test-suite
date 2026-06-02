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

int test2311(int init)
{
  int result;

  (*(array2[3] + 5)).mem.mem = init;
  result = (*(array2[3] + 5)).mem.mem;

  return (result != init);
}

int test2312(int init)
{
  int result;

  (*(array2[3] + 5)).array1[7] = init;
  result = (*(array2[3] + 5)).array1[7];

  return (result != init);
}

int test2313(int init)
{
  int result;

  *((*(array2[3] + 5)).array1 + 7) = init;
  result = *((*(array2[3] + 5)).array1 + 7);

  return (result != init);
}

int test2321(int init)
{
  int result;

  (*(array3[3] + 5))[7].mem = init;
  result = (*(array3[3] + 5))[7].mem;

  return (result != init);
}

int test2322(int init)
{
  int result;

  (*(array4[3] + 5))[7][9] = init;
  result = (*(array4[3] + 5))[7][9];

  return (result != init);
}

int test2323(int init)
{
  int result;

  *((*(array4[3] + 5))[7] + 9) = init;
  result = *((*(array4[3] + 5))[7] + 9);

  return (result != init);
}

int test2331(int init)
{
  int result;

  (*(*(array3[3] + 5) + 7)).mem = init;
  result = (*(*(array3[3] + 5) + 7)).mem;

  return (result != init);
}

int test2332(int init)
{
  int result;

  (*(*(array4[3] + 5) + 7))[9] = init;
  result = (*(*(array4[3] + 5) + 7))[9];

  return (result != init);
}

int test2333(int init)
{
  int result;

  *(*(*(array4[3] + 5) + 7) + 9) = init;
  result = *(*(*(array4[3] + 5) + 7) + 9);

  return (result != init);
}

int main()
{
  if (test2311(10) != 0) {
    printf("test2311 ng\n");
  }
  if (test2312(10) != 0) {
    printf("test2312 ng\n");
  }
  if (test2313(10) != 0) {
    printf("test2313 ng\n");
  }
  if (test2321(10) != 0) {
    printf("test2321 ng\n");
  }
  if (test2322(10) != 0) {
    printf("test2322 ng\n");
  }
  if (test2323(10) != 0) {
    printf("test2323 ng\n");
  }
  if (test2331(10) != 0) {
    printf("test2331 ng\n");
  }
  if (test2332(10) != 0) {
    printf("test2332 ng\n");
  }
  if (test2333(10) != 0) {
    printf("test2333 ng\n");
  }

  printf("test end\n");

  return 0;
}
