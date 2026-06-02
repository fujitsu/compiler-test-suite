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

int index1;
int index2;
int index3;

int test0113(int init)
{
  int result;

  obj.mem.array1[index3] = init;
  result = obj.mem.array1[index3];

  return (result != init);
}

int test0115(int init)
{
  int result;

  *(obj.mem.array1 + index3) = init;
  result = *(obj.mem.array1 + index3);

  return (result != init);
}

int test0123(int init)
{
  int result;

  obj.array2[3][index3] = init;
  result = obj.array2[3][index3];

  return (result != init);
}

int test0125(int init)
{
  int result;

  *(obj.array2[3] + index3) = init;
  result = *(obj.array2[3] + index3);

  return (result != init);
}

int test0131(int init)
{
  int result;

  obj.array1[index2].mem = init;
  result = obj.array1[index2].mem;

  return (result != init);
}

int test0132(int init)
{
  int result;

  obj.array2[index2][5] = init;
  result = obj.array2[index2][5];

  return (result != init);
}

int test0133(int init)
{
  int result;

  obj.array2[index2][index3] = init;
  result = obj.array2[index2][index3];

  return (result != init);
}

int test0134(int init)
{
  int result;

  *(obj.array2[index2] + 5) = init;
  result = *(obj.array2[index2] + 5);

  return (result != init);
}

int test0135(int init)
{
  int result;

  *(obj.array2[index2] + index3) = init;
  result = *(obj.array2[index2] + index3);

  return (result != init);
}

int test0143(int init)
{
  int result;

  (*(obj.array2 + 3))[index3] = init;
  result = (*(obj.array2 + 3))[index3];

  return (result != init);
}

int test0145(int init)
{
  int result;

  *(*(obj.array2 + 3) + index3) = init;
  result = *(*(obj.array2 + 3) + index3);

  return (result != init);
}

int test0151(int init)
{
  int result;

  (*(obj.array1 + index2)).mem = init;
  result = (*(obj.array1 + index2)).mem;

  return (result != init);
}

int test0152(int init)
{
  int result;

  (*(obj.array2 + index2))[5] = init;
  result = (*(obj.array2 + index2))[5];

  return (result != init);
}

int test0153(int init)
{
  int result;

  (*(obj.array2 + index2))[index3] = init;
  result = (*(obj.array2 + index2))[index3];

  return (result != init);
}

int test0154(int init)
{
  int result;

  *(*(obj.array2 + index2) + 5) = init;
  result = *(*(obj.array2 + index2) + 5);

  return (result != init);
}

int test0155(int init)
{
  int result;

  *(*(obj.array2 + index2) + index3) = init;
  result = *(*(obj.array2 + index2) + index3);

  return (result != init);
}

int main()
{
  index1 = 3;
  index2 = 5;
  index3 = 7;

  if (test0113(10) != 0) {
    printf("test0113 ng\n");
  }
  if (test0115(10) != 0) {
    printf("test0115 ng\n");
  }
  if (test0123(10) != 0) {
    printf("test0123 ng\n");
  }
  if (test0125(10) != 0) {
    printf("test0125 ng\n");
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
  if (test0134(10) != 0) {
    printf("test0134 ng\n");
  }
  if (test0135(10) != 0) {
    printf("test0135 ng\n");
  }
  if (test0143(10) != 0) {
    printf("test0143 ng\n");
  }
  if (test0145(10) != 0) {
    printf("test0145 ng\n");
  }
  if (test0151(10) != 0) {
    printf("test0151 ng\n");
  }
  if (test0152(10) != 0) {
    printf("test0152 ng\n");
  }
  if (test0153(10) != 0) {
    printf("test0153 ng\n");
  }
  if (test0154(10) != 0) {
    printf("test0154 ng\n");
  }
  if (test0155(10) != 0) {
    printf("test0155 ng\n");
  }

  printf("test end\n");

  return 0;
}
