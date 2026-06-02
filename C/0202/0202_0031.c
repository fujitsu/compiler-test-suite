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

int test0413(int init)
{
  int result;

  (*(array1 + 3)).array1[index3] = init;
  result = (*(array1 + 3)).array1[index3];

  return (result != init);
}

int test0415(int init)
{
  int result;

  *((*(array1 + 3)).array1 + index3) = init;
  result = *((*(array1 + 3)).array1 + index3);

  return (result != init);
}

int test0423(int init)
{
  int result;

  (*(array3 + 3))[5][index3] = init;
  result = (*(array3 + 3))[5][index3];

  return (result != init);
}

int test0425(int init)
{
  int result;

  *((*(array3 + 3))[5] + index3) = init;
  result = *((*(array3 + 3))[5] + index3);

  return (result != init);
}

int test0431(int init)
{
  int result;

  (*(array2 + 3))[index2].mem = init;
  result = (*(array2 + 3))[index2].mem;

  return (result != init);
}

int test0432(int init)
{
  int result;

  (*(array3 + 3))[index2][5] = init;
  result = (*(array3 + 3))[index2][5];

  return (result != init);
}

int test0433(int init)
{
  int result;

  (*(array3 + 3))[index2][index3] = init;
  result = (*(array3 + 3))[index2][index3];

  return (result != init);
}

int test0434(int init)
{
  int result;

  *((*(array3 + 3))[index2] + 5) = init;
  result = *((*(array3 + 3))[index2] + 5);

  return (result != init);
}

int test0435(int init)
{
  int result;

  *((*(array3 + 3))[index2] + index3) = init;
  result = *((*(array3 + 3))[index2] + index3);

  return (result != init);
}

int test0443(int init)
{
  int result;

  (*(*(array3 + 3) + 5))[index3] = init;
  result = (*(*(array3 + 3) + 5))[index3];

  return (result != init);
}

int test0445(int init)
{
  int result;

  *(*(*(array3 + 3) + 5) + index3) = init;
  result = *(*(*(array3 + 3) + 5) + index3);

  return (result != init);
}

int test0451(int init)
{
  int result;

  (*(*(array2 + 3) + index2)).mem = init;
  result = (*(*(array2 + 3) + index2)).mem;

  return (result != init);
}

int test0452(int init)
{
  int result;

  (*(*(array3 + 3) + index2))[5] = init;
  result = (*(*(array3 + 3) + index2))[5];

  return (result != init);
}

int test0453(int init)
{
  int result;

  (*(*(array3 + 3) + index2))[index3] = init;
  result = (*(*(array3 + 3) + index2))[index3];

  return (result != init);
}

int test0454(int init)
{
  int result;

  *(*(*(array3 + 3) + index2) + 7) = init;
  result = *(*(*(array3 + 3) + index2) + 7);

  return (result != init);
}

int test0455(int init)
{
  int result;

  *(*(*(array3 + 3) + index2) + index3) = init;
  result = *(*(*(array3 + 3) + index2) + index3);

  return (result != init);
}

int main()
{
  index1 = 3;
  index2 = 5;
  index3 = 7;

  if (test0413(10) != 0) {
    printf("test0413 ng\n");
  }
  if (test0415(10) != 0) {
    printf("test0415 ng\n");
  }
  if (test0423(10) != 0) {
    printf("test0423 ng\n");
  }
  if (test0425(10) != 0) {
    printf("test0425 ng\n");
  }
  if (test0431(10) != 0) {
    printf("test0431 ng\n");
  }
  if (test0432(10) != 0) {
    printf("test0432 ng\n");
  }
  if (test0433(10) != 0) {
    printf("test0433 ng\n");
  }
  if (test0434(10) != 0) {
    printf("test0434 ng\n");
  }
  if (test0435(10) != 0) {
    printf("test0435 ng\n");
  }
  if (test0443(10) != 0) {
    printf("test0443 ng\n");
  }
  if (test0445(10) != 0) {
    printf("test0445 ng\n");
  }
  if (test0451(10) != 0) {
    printf("test0451 ng\n");
  }
  if (test0452(10) != 0) {
    printf("test0452 ng\n");
  }
  if (test0453(10) != 0) {
    printf("test0453 ng\n");
  }
  if (test0454(10) != 0) {
    printf("test0454 ng\n");
  }
  if (test0455(10) != 0) {
    printf("test0455 ng\n");
  }

  printf("test end\n");

  return 0;
}
