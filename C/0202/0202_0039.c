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

int test1211(int init)
{
  int result;

  obj.array1[3].mem.mem = init;
  result = obj.array1[3].mem.mem;

  return (result != init);
}

int test1212(int init)
{
  int result;

  obj.array1[3].array1[5] = init;
  result = obj.array1[3].array1[5];

  return (result != init);
}

int test1213(int init)
{
  int result;

  *(obj.array1[3].array1 + 5) = init;
  result = *(obj.array1[3].array1 + 5);

  return (result != init);
}

int test1221(int init)
{
  int result;

  obj.array2[3][5].mem = init;
  result = obj.array2[3][5].mem;

  return (result != init);
}

int test1222(int init)
{
  int result;

  obj.array3[3][5][7] = init;
  result = obj.array3[3][5][7];

  return (result != init);
}

int test1223(int init)
{
  int result;

  *(obj.array3[3][5] + 7) = init;
  result = *(obj.array3[3][5] + 7);

  return (result != init);
}

int test1231(int init)
{
  int result;

  (*(obj.array2[3] + 5)).mem = init;
  result = (*(obj.array2[3] + 5)).mem;

  return (result != init);
}

int test1232(int init)
{
  int result;

  (*(obj.array3[3] + 5))[7] = init;
  result = (*(obj.array3[3] + 5))[7];

  return (result != init);
}

int test1233(int init)
{
  int result;

  *(*(obj.array3[3] + 5) + 7) = init;
  result = *(*(obj.array3[3] + 5) + 7);

  return (result != init);
}

int main()
{
  if (test1211(10) != 0) {
    printf("test1211 ng\n");
  }
  if (test1212(10) != 0) {
    printf("test1212 ng\n");
  }
  if (test1213(10) != 0) {
    printf("test1213 ng\n");
  }
  if (test1221(10) != 0) {
    printf("test1221 ng\n");
  }
  if (test1222(10) != 0) {
    printf("test1222 ng\n");
  }
  if (test1223(10) != 0) {
    printf("test1223 ng\n");
  }
  if (test1231(10) != 0) {
    printf("test1231 ng\n");
  }
  if (test1232(10) != 0) {
    printf("test1232 ng\n");
  }
  if (test1233(10) != 0) {
    printf("test1233 ng\n");
  }

  printf("test end\n");

  return 0;
}
