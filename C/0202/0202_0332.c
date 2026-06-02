#include <stdio.h>
int a[10], b[10], c[10], d[10], e[10], f[10];

void test01(int x, int y)
{
  int i;
  for (i=0; i<10; i++) {
    a[i] = a[i+x] + 1;
    b[i] = b[i+y] + 1;
  }
}

void test02(int x, int y)
{
  int i;
  for (i=0; i<10; i++) {
    a[i] = a[i+x] + 1;
    b[i] = b[i+y] + 1;
  }
}

int cc1;
void test03(int x, int y)
{
  int i;
  for (i=0; i<10; i++) {
    a[i] = a[i+x] + 1;
    b[i] = b[i+y] + 1;
  }
}

typedef struct T04 { int mem; } ttype;
void test04(int x, int y)
{
  int i;
  for (i=0; i<10; i++) {
    a[i] = a[i+x] + 1;
    b[i] = b[i+y] + 1;
  }
}

int sub();
void test05(int x, int y)
{
  int i;
  for (i=0; i<10; i++) {
    a[i] = a[i+x] + 1;
    b[i] = b[i+y] + 1;
  }
}
int main()
{
  printf("  ok \n");
}
