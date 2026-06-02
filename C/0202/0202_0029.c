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

int test0213(int init)
{
  int result;

  array1[3].array1[index3] = init;
  result = array1[3].array1[index3];

  return (result != init);
}

int test0215(int init)
{
  int result;

  *(array1[3].array1 + index3) = init;
  result = *(array1[3].array1 + index3);

  return (result != init);
}

int test0223(int init)
{
  int result;

  array3[3][5][index3] = init;
  result = array3[3][5][index3];

  return (result != init);
}

int test0225(int init)
{
  int result;

  *(array3[3][5] + index3) = init;
  result = *(array3[3][5] + index3);

  return (result != init);
}

int test0231(int init)
{
  int result;

  array2[3][index2].mem = init;
  result = array2[3][index2].mem;

  return (result != init);
}

int test0232(int init)
{
  int result;

  array3[3][index2][5] = init;
  result = array3[3][index2][5];

  return (result != init);
}

int test0233(int init)
{
  int result;

  array3[3][index2][index3] = init;
  result = array3[3][index2][index3];

  return (result != init);
}

int test0234(int init)
{
  int result;

  *(array3[3][index2] + 5) = init;
  result = *(array3[3][index2] + 5);

  return (result != init);
}

int test0235(int init)
{
  int result;

  *(array3[3][index2] + index3) = init;
  result = *(array3[3][index2] + index3);

  return (result != init);
}

int test0243(int init)
{
  int result;

  (*(array3[3] + 3))[index3] = init;
  result = (*(array3[3] + 3))[index3];

  return (result != init);
}

int test0245(int init)
{
  int result;

  *(*(array3[3] + 3) + index3) = init;
  result = *(*(array3[3] + 3) + index3);

  return (result != init);
}

int test0251(int init)
{
  int result;

  (*(array2[3] + index2)).mem = init;
  result = (*(array2[3] + index2)).mem;

  return (result != init);
}

int test0252(int init)
{
  int result;

  (*(array3[3] + index2))[5] = init;
  result = (*(array3[3] + index2))[5];

  return (result != init);
}

int test0253(int init)
{
  int result;

  (*(array3[3] + index2))[index3] = init;
  result = (*(array3[3] + index2))[index3];

  return (result != init);
}

int test0254(int init)
{
  int result;

  *(*(array3[3] + index2) + 5) = init;
  result = *(*(array3[3] + index2) + 5);

  return (result != init);
}

int test0255(int init)
{
  int result;

  *(*(array3[3] + index2) + index3) = init;
  result = *(*(array3[3] + index2) + index3);

  return (result != init);
}

int main()
{
  index1 = 3;
  index2 = 5;
  index3 = 7;

  if (test0213(10) != 0) {
    printf("test0213 ng\n");
  }
  if (test0215(10) != 0) {
    printf("test0215 ng\n");
  }
  if (test0223(10) != 0) {
    printf("test0223 ng\n");
  }
  if (test0225(10) != 0) {
    printf("test0225 ng\n");
  }
  if (test0231(10) != 0) {
    printf("test0231 ng\n");
  }
  if (test0232(10) != 0) {
    printf("test0232 ng\n");
  }
  if (test0233(10) != 0) {
    printf("test0233 ng\n");
  }
  if (test0234(10) != 0) {
    printf("test0234 ng\n");
  }
  if (test0235(10) != 0) {
    printf("test0235 ng\n");
  }
  if (test0243(10) != 0) {
    printf("test0243 ng\n");
  }
  if (test0245(10) != 0) {
    printf("test0245 ng\n");
  }
  if (test0251(10) != 0) {
    printf("test0251 ng\n");
  }
  if (test0252(10) != 0) {
    printf("test0252 ng\n");
  }
  if (test0253(10) != 0) {
    printf("test0253 ng\n");
  }
  if (test0254(10) != 0) {
    printf("test0254 ng\n");
  }
  if (test0255(10) != 0) {
    printf("test0255 ng\n");
  }

  printf("test end\n");

  return 0;
}
