#include <stdio.h>
int a[10][10], b[10][10], c[10][10];

void test01(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test02(int x, int y)
{
  int i, j;
#pragma procedure ixodr i,j
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test03(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test04(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test05(int x, int y)
{
  int i, j;
#pragma loop ixodr i,k
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

extern int sub();
void test06(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

typedef struct T07 { int mem; } ttype;
void test07(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

enum T08 { emem0, emem1 };
void test08(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test09(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}

void test10(int x, int y)
{
  int i, j;
  for (i=0; i<x; i++) {
    for (j=0; j<y; j++) {
      a[i][j] = b[i][j] + c[i][j];
    }
  }
}
int main()
{
  printf("  ok \n");
}
