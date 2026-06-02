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

int test1111(int init)
{
  int result;

  obj.mem.mem.mem.mem = init;
  result = obj.mem.mem.mem.mem;

  return (result != init);
}

int test1112(int init)
{
  int result;

  obj.mem.mem.array1[3] = init;
  result = obj.mem.mem.array1[3];

  return (result != init);
}

int test1113(int init)
{
  int result;

  *(obj.mem.mem.array1 + 3) = init;
  result = *(obj.mem.mem.array1 + 3);

  return (result != init);
}

int test1121(int init)
{
  int result;

  obj.mem.array1[3].mem = init;
  result = obj.mem.array1[3].mem;

  return (result != init);
}

int test1122(int init)
{
  int result;

  obj.mem.array2[3][5] = init;
  result = obj.mem.array2[3][5];

  return (result != init);
}

int test1123(int init)
{
  int result;

  *(obj.mem.array2[3] + 5) = init;
  result = *(obj.mem.array2[3] + 5);

  return (result != init);
}

int test1131(int init)
{
  int result;

  (*(obj.mem.array1 + 3)).mem = init;
  result = (*(obj.mem.array1 + 3)).mem;

  return (result != init);
}

int test1132(int init)
{
  int result;

  (*(obj.mem.array2 + 3))[5] = init;
  result = (*(obj.mem.array2 + 3))[5];

  return (result != init);
}

int test1133(int init)
{
  int result;

  *(*(obj.mem.array2 + 3) + 5) = init;
  result = *(*(obj.mem.array2 + 3) + 5);

  return (result != init);
}

int main()
{
  if (test1111(10) != 0) {
    printf("test1111 ng\n");
  }
  if (test1112(10) != 0) {
    printf("test1112 ng\n");
  }
  if (test1113(10) != 0) {
    printf("test1113 ng\n");
  }
  if (test1121(10) != 0) {
    printf("test1121 ng\n");
  }
  if (test1122(10) != 0) {
    printf("test1122 ng\n");
  }
  if (test1123(10) != 0) {
    printf("test1123 ng\n");
  }
  if (test1131(10) != 0) {
    printf("test1131 ng\n");
  }
  if (test1132(10) != 0) {
    printf("test1132 ng\n");
  }
  if (test1133(10) != 0) {
    printf("test1133 ng\n");
  }

  printf("test end\n");

  return 0;
}
