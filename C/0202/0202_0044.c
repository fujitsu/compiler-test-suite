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

int test3111(int init)
{
  int result;

  (*(array1 + 3)).mem.mem.mem = init;
  result = (*(array1 + 3)).mem.mem.mem;

  return (result != init);
}

int test3112(int init)
{
  int result;

  (*(array1 + 3)).mem.array1[5] = init;
  result = (*(array1 + 3)).mem.array1[5];

  return (result != init);
}

int test3113(int init)
{
  int result;

  *((*(array1 + 3)).mem.array1 + 5) = init;
  result = *((*(array1 + 3)).mem.array1 + 5);

  return (result != init);
}

int test3121(int init)
{
  int result;

  (*(array1 + 3)).array1[5].mem = init;
  result = (*(array1 + 3)).array1[5].mem;

  return (result != init);
}

int test3122(int init)
{
  int result;

  (*(array1 + 3)).array2[5][7] = init;
  result = (*(array1 + 3)).array2[5][7];

  return (result != init);
}

int test3123(int init)
{
  int result;

  *((*(array1 + 3)).array2[5] + 7) = init;
  result = *((*(array1 + 3)).array2[5] + 7);

  return (result != init);
}

int test3131(int init)
{
  int result;

  (*((*(array1 + 3)).array1 + 5)).mem = init;
  result = (*((*(array1 + 3)).array1 + 5)).mem;

  return (result != init);
}

int test3132(int init)
{
  int result;

  (*((*(array1 + 3)).array2 + 5))[7] = init;
  result = (*((*(array1 + 3)).array2 + 5))[7];

  return (result != init);
}

int test3133(int init)
{
  int result;

  *(*((*(array1 + 3)).array2 + 5) + 7) = init;
  result = *(*((*(array1 + 3)).array2 + 5) + 7);

  return (result != init);
}

int main()
{
  if (test3111(10) != 0) {
    printf("test3111 ng\n");
  }
  if (test3112(10) != 0) {
    printf("test3112 ng\n");
  }
  if (test3113(10) != 0) {
    printf("test3113 ng\n");
  }
  if (test3121(10) != 0) {
    printf("test3121 ng\n");
  }
  if (test3122(10) != 0) {
    printf("test3122 ng\n");
  }
  if (test3123(10) != 0) {
    printf("test3123 ng\n");
  }
  if (test3131(10) != 0) {
    printf("test3131 ng\n");
  }
  if (test3132(10) != 0) {
    printf("test3132 ng\n");
  }
  if (test3133(10) != 0) {
    printf("test3133 ng\n");
  }

  printf("test end\n");

  return 0;
}
