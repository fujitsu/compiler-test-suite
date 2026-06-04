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

int test0311(int init)
{
  int result;

  array1[index1].mem.mem = init;
  result = array1[index1].mem.mem;

  return (result != init);
}

int test0312(int init)
{
  int result;

  array1[index1].array1[5] = init;
  result = array1[index1].array1[5];

  return (result != init);
}

int test0313(int init)
{
  int result;

  array1[index1].array1[index3] = init;
  result = array1[index1].array1[index3];

  return (result != init);
}

int test0314(int init)
{
  int result;

  *(array1[index1].array1 + 5) = init;
  result = *(array1[index1].array1 + 5);

  return (result != init);
}

int test0315(int init)
{
  int result;

  *(array1[index1].array1 + index3) = init;
  result = *(array1[index1].array1 + index3);

  return (result != init);
}

int test0321(int init)
{
  int result;

  array2[index1][5].mem = init;
  result = array2[index1][5].mem;

  return (result != init);
}

int test0322(int init)
{
  int result;

  array3[index1][5][7] = init;
  result = array3[index1][5][7];

  return (result != init);
}

int test0323(int init)
{
  int result;

  array3[index1][5][index3] = init;
  result = array3[index1][5][index3];

  return (result != init);
}

int test0324(int init)
{
  int result;

  *(array3[index1][5] + 7) = init;
  result = *(array3[index1][5] + 7);

  return (result != init);
}

int test0325(int init)
{
  int result;

  *(array3[index1][5] + index3) = init;
  result = *(array3[index1][5] + index3);

  return (result != init);
}

int test0331(int init)
{
  int result;

  array2[index1][index2].mem = init;
  result = array2[index1][index2].mem;

  return (result != init);
}

int test0332(int init)
{
  int result;

  array3[index1][index2][5] = init;
  result = array3[index1][index2][5];

  return (result != init);
}

int test0333(int init)
{
  int result;

  array3[index1][index2][index3] = init;
  result = array3[index1][index2][index3];

  return (result != init);
}

int test0334(int init)
{
  int result;

  *(array3[index1][index2] + 5) = init;
  result = *(array3[index1][index2] + 5);

  return (result != init);
}

int test0335(int init)
{
  int result;

  *(array3[index1][index2] + index3) = init;
  result = *(array3[index1][index2] + index3);

  return (result != init);
}

int test0341(int init)
{
  int result;

  (*(array2[index1] + 5)).mem = init;
  result = (*(array2[index1] + 5)).mem;

  return (result != init);
}

int test0342(int init)
{
  int result;

  (*(array3[index1] + 5))[7] = init;
  result = (*(array3[index1] + 5))[7];

  return (result != init);
}

int test0343(int init)
{
  int result;

  (*(array3[index1] + 5))[index3] = init;
  result = (*(array3[index1] + 5))[index3];

  return (result != init);
}

int test0344(int init)
{
  int result;

  *(*(array3[index1] + 5) + 7) = init;
  result = *(*(array3[index1] + 5) + 7);

  return (result != init);
}

int test0345(int init)
{
  int result;

  *(*(array3[index1] + 5) + index3) = init;
  result = *(*(array3[index1] + 5) + index3);

  return (result != init);
}

int test0351(int init)
{
  int result;

  (*(array2[index1] + index2)).mem = init;
  result = (*(array2[index1] + index2)).mem;

  return (result != init);
}

int test0352(int init)
{
  int result;

  (*(array3[index1] + index2))[5] = init;
  result = (*(array3[index1] + index2))[5];

  return (result != init);
}

int test0353(int init)
{
  int result;

  (*(array3[index1] + index2))[index3] = init;
  result = (*(array3[index1] + index2))[index3];

  return (result != init);
}

int test0354(int init)
{
  int result;

  *(*(array3[index1] + index2) + 5) = init;
  result = *(*(array3[index1] + index2) + 5);

  return (result != init);
}

int test0355(int init)
{
  int result;

  *(*(array3[index1] + index2) + index3) = init;
  result = *(*(array3[index1] + index2) + index3);

  return (result != init);
}

int main()
{
  index1 = 3;
  index2 = 5;
  index3 = 7;

  if (test0311(10) != 0) {
    printf("test0311 ng\n");
  }
  if (test0312(10) != 0) {
    printf("test0312 ng\n");
  }
  if (test0313(10) != 0) {
    printf("test0313 ng\n");
  }
  if (test0314(10) != 0) {
    printf("test0314 ng\n");
  }
  if (test0315(10) != 0) {
    printf("test0315 ng\n");
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
  if (test0324(10) != 0) {
    printf("test0324 ng\n");
  }
  if (test0325(10) != 0) {
    printf("test0325 ng\n");
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
  if (test0334(10) != 0) {
    printf("test0334 ng\n");
  }
  if (test0335(10) != 0) {
    printf("test0335 ng\n");
  }
  if (test0341(10) != 0) {
    printf("test0341 ng\n");
  }
  if (test0342(10) != 0) {
    printf("test0342 ng\n");
  }
  if (test0343(10) != 0) {
    printf("test0343 ng\n");
  }
  if (test0344(10) != 0) {
    printf("test0344 ng\n");
  }
  if (test0345(10) != 0) {
    printf("test0345 ng\n");
  }
  if (test0351(10) != 0) {
    printf("test0351 ng\n");
  }
  if (test0352(10) != 0) {
    printf("test0352 ng\n");
  }
  if (test0353(10) != 0) {
    printf("test0353 ng\n");
  }
  if (test0354(10) != 0) {
    printf("test0354 ng\n");
  }
  if (test0355(10) != 0) {
    printf("test0355 ng\n");
  }

  printf("test end\n");

  return 0;
}
