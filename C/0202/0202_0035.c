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

int test0111(int init)
{
  int result;

  obj.mem.mem.mem = init;
  result = obj.mem.mem.mem;

  return (result != init);
}

int test0112(int init)
{
  int result;

  obj.mem.array1[3] = init;
  result = obj.mem.array1[3];

  return (result != init);
}

int test0113(int init)
{
  int result;

  *(obj.mem.array1 + 3) = init;
  result = *(obj.mem.array1 + 3);

  return (result != init);
}

int test0121(int init)
{
  int result;

  obj.array1[3].mem = init;
  result = obj.array1[3].mem;

  return (result != init);
}

int test0122(int init)
{
  int result;

  obj.array2[3][5] = init;
  result = obj.array2[3][5];

  return (result != init);
}

int test0123(int init)
{
  int result;

  *(obj.array2[3] + 5) = init;
  result = *(obj.array2[3] + 5);

  return (result != init);
}

int test0131(int init)
{
  int result;

  (*(obj.array1 + 3)).mem = init;
  result = (*(obj.array1 + 3)).mem;

  return (result != init);
}

int test0132(int init)
{
  int result;

  (*(obj.array2 + 3))[5] = init;
  result = (*(obj.array2 + 3))[5];

  return (result != init);
}

int test0133(int init)
{
  int result;

  *(*(obj.array2 + 3) + 5) = init;
  result = *(*(obj.array2 + 3) + 5);

  return (result != init);
}

int main()
{
  if (test0111(10) != 0) {
    printf("test0111 ng\n");
  }
  if (test0112(10) != 0) {
    printf("test0112 ng\n");
  }
  if (test0113(10) != 0) {
    printf("test0113 ng\n");
  }
  if (test0121(10) != 0) {
    printf("test0121 ng\n");
  }
  if (test0122(10) != 0) {
    printf("test0122 ng\n");
  }
  if (test0123(10) != 0) {
    printf("test0123 ng\n");
  }
  if (test0131(10) != 0) {
    printf("test0131 ng\n");
  }
  if (test0132(10) != 0) {
    printf("test0132 ng\n");
  }
  if (test0133(10) != 0) {
    printf("test0133 ng\n");
  }

  printf("test end\n");

  return 0;
}
