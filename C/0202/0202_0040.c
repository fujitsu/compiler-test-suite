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

int test1311(int init)
{
  int result;

  (*(obj.array1 + 3)).mem.mem = init;
  result = (*(obj.array1 + 3)).mem.mem;

  return (result != init);
}

int test1312(int init)
{
  int result;

  (*(obj.array1 + 3)).array1[5] = init;
  result = (*(obj.array1 + 3)).array1[5];

  return (result != init);
}

int test1313(int init)
{
  int result;

  *((*(obj.array1 + 3)).array1 + 5) = init;
  result = *((*(obj.array1 + 3)).array1 + 5);

  return (result != init);
}

int test1321(int init)
{
  int result;

  (*(obj.array2 + 3))[5].mem = init;
  result = (*(obj.array2 + 3))[5].mem;

  return (result != init);
}

int test1322(int init)
{
  int result;

  (*(obj.array3 + 3))[5][7] = init;
  result = (*(obj.array3 + 3))[5][7];

  return (result != init);
}

int test1323(int init)
{
  int result;

  *((*(obj.array3 + 3))[5] + 7) = init;
  result = *((*(obj.array3 + 3))[5] + 7);

  return (result != init);
}

int test1331(int init)
{
  int result;

  (*(*(obj.array2 + 3) + 5)).mem = init;
  result = (*(*(obj.array2 + 3) + 5)).mem;

  return (result != init);
}

int test1332(int init)
{
  int result;

  (*(*(obj.array3 + 3) + 5))[7] = init;
  result = (*(*(obj.array3 + 3) + 5))[7];

  return (result != init);
}

int test1333(int init)
{
  int result;

  *(*(*(obj.array3 + 3) + 5) + 7) = init;
  result = *(*(*(obj.array3 + 3) + 5) + 7);

  return (result != init);
}

int main()
{
  if (test1311(10) != 0) {
    printf("test1311 ng\n");
  }
  if (test1312(10) != 0) {
    printf("test1312 ng\n");
  }
  if (test1313(10) != 0) {
    printf("test1313 ng\n");
  }
  if (test1321(10) != 0) {
    printf("test1321 ng\n");
  }
  if (test1322(10) != 0) {
    printf("test1322 ng\n");
  }
  if (test1323(10) != 0) {
    printf("test1323 ng\n");
  }
  if (test1331(10) != 0) {
    printf("test1331 ng\n");
  }
  if (test1332(10) != 0) {
    printf("test1332 ng\n");
  }
  if (test1333(10) != 0) {
    printf("test1333 ng\n");
  }

  printf("test end\n");

  return 0;
}
