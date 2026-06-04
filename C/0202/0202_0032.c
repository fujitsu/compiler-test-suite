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

int test0511(int init)
{
  int result;

  (*(array1 + index1)).mem.mem = init;
  result = (*(array1 + index1)).mem.mem;

  return (result != init);
}

int test0512(int init)
{
  int result;

  (*(array1 + index1)).array1[5] = init;
  result = (*(array1 + index1)).array1[5];

  return (result != init);
}

int test0513(int init)
{
  int result;

  (*(array1 + index1)).array1[index3] = init;
  result = (*(array1 + index1)).array1[index3];

  return (result != init);
}

int test0514(int init)
{
  int result;

  *((*(array1 + index1)).array1 + 5) = init;
  result = *((*(array1 + index1)).array1 + 5);

  return (result != init);
}

int test0515(int init)
{
  int result;

  *((*(array1 + index1)).array1 + index3) = init;
  result = *((*(array1 + index1)).array1 + index3);

  return (result != init);
}

int test0521(int init)
{
  int result;

  (*(array2 + index1))[5].mem = init;
  result = (*(array2 + index1))[5].mem;

  return (result != init);
}

int test0522(int init)
{
  int result;

  (*(array3 + index1))[5][7] = init;
  result = (*(array3 + index1))[5][7];

  return (result != init);
}

int test0523(int init)
{
  int result;

  (*(array3 + index1))[5][index3] = init;
  result = (*(array3 + index1))[5][index3];

  return (result != init);
}

int test0524(int init)
{
  int result;

  *((*(array3 + index1))[5] + 7) = init;
  result = *((*(array3 + index1))[5] + 7);

  return (result != init);
}

int test0525(int init)
{
  int result;

  *((*(array3 + index1))[5] + index3) = init;
  result = *((*(array3 + index1))[5] + index3);

  return (result != init);
}

int test0531(int init)
{
  int result;

  (*(array2 + index1))[index2].mem = init;
  result = (*(array2 + index1))[index2].mem;

  return (result != init);
}

int test0532(int init)
{
  int result;

  (*(array3 + index1))[index2][5] = init;
  result = (*(array3 + index1))[index2][5];

  return (result != init);
}

int test0533(int init)
{
  int result;

  (*(array3 + index1))[index2][index3] = init;
  result = (*(array3 + index1))[index2][index3];

  return (result != init);
}

int test0534(int init)
{
  int result;

  *((*(array3 + index1))[index2] + 5) = init;
  result = *((*(array3 + index1))[index2] + 5);

  return (result != init);
}

int test0535(int init)
{
  int result;

  *((*(array3 + index1))[index2] + index3) = init;
  result = *((*(array3 + index1))[index2] + index3);

  return (result != init);
}

int test0541(int init)
{
  int result;

  (*(*(array2 + index1) + 5)).mem = init;
  result = (*(*(array2 + index1) + 5)).mem;

  return (result != init);
}

int test0542(int init)
{
  int result;

  (*(*(array3 + index1) + 5))[7] = init;
  result = (*(*(array3 + index1) + 5))[7];

  return (result != init);
}

int test0543(int init)
{
  int result;

  (*(*(array3 + index1) + 5))[index3] = init;
  result = (*(*(array3 + index1) + 5))[index3];

  return (result != init);
}

int test0544(int init)
{
  int result;

  *(*(*(array3 + index1) + 5) + 7) = init;
  result = *(*(*(array3 + index1) + 5) + 7);

  return (result != init);
}

int test0545(int init)
{
  int result;

  *(*(*(array3 + index1) + 5) + index3) = init;
  result = *(*(*(array3 + index1) + 5) + index3);

  return (result != init);
}

int test0551(int init)
{
  int result;

  (*(*(array2 + index1) + index2)).mem = init;
  result = (*(*(array2 + index1) + index2)).mem;

  return (result != init);
}

int test0552(int init)
{
  int result;

  (*(*(array3 + index1) + index2))[5] = init;
  result = (*(*(array3 + index1) + index2))[5];

  return (result != init);
}

int test0553(int init)
{
  int result;

  (*(*(array3 + index1) + index2))[index3] = init;
  result = (*(*(array3 + index1) + index2))[index3];

  return (result != init);
}

int test0554(int init)
{
  int result;

  *(*(*(array3 + index1) + index2) + 5) = init;
  result = *(*(*(array3 + index1) + index2) + 5);

  return (result != init);
}

int test0555(int init)
{
  int result;

  *(*(*(array3 + index1) + index2) + index3) = init;
  result = *(*(*(array3 + index1) + index2) + index3);

  return (result != init);
}

int main()
{
  index1 = 3;
  index2 = 5;
  index3 = 7;

  if (test0511(10) != 0) {
    printf("test0511 ng\n");
  }
  if (test0512(10) != 0) {
    printf("test0512 ng\n");
  }
  if (test0513(10) != 0) {
    printf("test0513 ng\n");
  }
  if (test0514(10) != 0) {
    printf("test0514 ng\n");
  }
  if (test0515(10) != 0) {
    printf("test0515 ng\n");
  }
  if (test0521(10) != 0) {
    printf("test0521 ng\n");
  }
  if (test0522(10) != 0) {
    printf("test0522 ng\n");
  }
  if (test0523(10) != 0) {
    printf("test0523 ng\n");
  }
  if (test0524(10) != 0) {
    printf("test0524 ng\n");
  }
  if (test0525(10) != 0) {
    printf("test0525 ng\n");
  }
  if (test0531(10) != 0) {
    printf("test0531 ng\n");
  }
  if (test0532(10) != 0) {
    printf("test0532 ng\n");
  }
  if (test0533(10) != 0) {
    printf("test0533 ng\n");
  }
  if (test0534(10) != 0) {
    printf("test0534 ng\n");
  }
  if (test0535(10) != 0) {
    printf("test0535 ng\n");
  }
  if (test0541(10) != 0) {
    printf("test0541 ng\n");
  }
  if (test0542(10) != 0) {
    printf("test0542 ng\n");
  }
  if (test0543(10) != 0) {
    printf("test0543 ng\n");
  }
  if (test0544(10) != 0) {
    printf("test0544 ng\n");
  }
  if (test0545(10) != 0) {
    printf("test0545 ng\n");
  }
  if (test0551(10) != 0) {
    printf("test0551 ng\n");
  }
  if (test0552(10) != 0) {
    printf("test0552 ng\n");
  }
  if (test0553(10) != 0) {
    printf("test0553 ng\n");
  }
  if (test0554(10) != 0) {
    printf("test0554 ng\n");
  }
  if (test0555(10) != 0) {
    printf("test0555 ng\n");
  }

  printf("test end\n");

  return 0;
}
