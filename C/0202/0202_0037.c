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

int test0311(int init)
{
  int result;

  (*(array1 + 3)).mem.mem = init;
  result = (*(array1 + 3)).mem.mem;

  return (result != init);
}

int test0312(int init)
{
  int result;

  (*(array1 + 3)).array1[5] = init;
  result = (*(array1 + 3)).array1[5];

  return (result != init);
}

int test0313(int init)
{
  int result;

  *((*(array1 + 3)).array1 + 5) = init;
  result = *((*(array1 + 3)).array1 + 5);

  return (result != init);
}

int test0321(int init)
{
  int result;

  (*(array2 + 3))[5].mem = init;
  result = (*(array2 + 3))[5].mem;

  return (result != init);
}

int test0322(int init)
{
  int result;

  (*(array3 + 3))[5][7] = init;
  result = (*(array3 + 3))[5][7];

  return (result != init);
}

int test0323(int init)
{
  int result;

  *((*(array3 + 3))[5] + 7) = init;
  result = *((*(array3 + 3))[5] + 7);

  return (result != init);
}

int test0331(int init)
{
  int result;

  (*(*(array2 + 3) + 5)).mem = init;
  result = (*(*(array2 + 3) + 5)).mem;

  return (result != init);
}

int test0332(int init)
{
  int result;

  (*(*(array3 + 3) + 5))[7] = init;
  result = (*(*(array3 + 3) + 5))[7];

  return (result != init);
}

int test0333(int init)
{
  int result;

  *(*(*(array3 + 3) + 5) + 7) = init;
  result = *(*(*(array3 + 3) + 5) + 7);

  return (result != init);
}

int main()
{
  if (test0311(10) != 0) {
    printf("test0311 ng\n");
  }
  if (test0312(10) != 0) {
    printf("test0312 ng\n");
  }
  if (test0313(10) != 0) {
    printf("test0313 ng\n");
  }
  if (test0321(10) != 0) {
    printf("test0321 ng\n");
  }
  if (test0322(10) != 0) {
    printf("test0322 ng\n");
  }
  if (test0323(10) != 0) {
    printf("test0323 ng\n");
  }
  if (test0331(10) != 0) {
    printf("test0331 ng\n");
  }
  if (test0332(10) != 0) {
    printf("test0332 ng\n");
  }
  if (test0333(10) != 0) {
    printf("test0333 ng\n");
  }

  printf("test end\n");

  return 0;
}
