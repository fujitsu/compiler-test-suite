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

int test2211(int init)
{
  int result;

  array2[3][5].mem.mem = init;
  result = array2[3][5].mem.mem;

  return (result != init);
}

int test2212(int init)
{
  int result;

  array2[3][5].array1[7] = init;
  result = array2[3][5].array1[7];

  return (result != init);
}

int test2213(int init)
{
  int result;

  *(array2[3][5].array1 + 7) = init;
  result = *(array2[3][5].array1 + 7);

  return (result != init);
}

int test2221(int init)
{
  int result;

  array3[3][5][7].mem = init;
  result = array3[3][5][7].mem;

  return (result != init);
}

int test2222(int init)
{
  int result;

  array4[3][5][7][9] = init;
  result = array4[3][5][7][9];

  return (result != init);
}

int test2223(int init)
{
  int result;

  *(array4[3][5][7] + 9) = init;
  result = *(array4[3][5][7] + 9);

  return (result != init);
}

int test2231(int init)
{
  int result;

  (*(array3[3][5] + 7)).mem = init;
  result = (*(array3[3][5] + 7)).mem;

  return (result != init);
}

int test2232(int init)
{
  int result;

  (*(array4[3][5] + 7))[9] = init;
  result = (*(array4[3][5] + 7))[9];

  return (result != init);
}

int test2233(int init)
{
  int result;

  *(*(array4[3][5] + 7) + 9) = init;
  result = *(*(array4[3][5] + 7) + 9);

  return (result != init);
}

int main()
{
  if (test2211(10) != 0) {
    printf("test2211 ng\n");
  }
  if (test2212(10) != 0) {
    printf("test2212 ng\n");
  }
  if (test2213(10) != 0) {
    printf("test2213 ng\n");
  }
  if (test2221(10) != 0) {
    printf("test2221 ng\n");
  }
  if (test2222(10) != 0) {
    printf("test2222 ng\n");
  }
  if (test2223(10) != 0) {
    printf("test2223 ng\n");
  }
  if (test2231(10) != 0) {
    printf("test2231 ng\n");
  }
  if (test2232(10) != 0) {
    printf("test2232 ng\n");
  }
  if (test2233(10) != 0) {
    printf("test2233 ng\n");
  }

  printf("test end\n");

  return 0;
}
