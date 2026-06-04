#include <stdio.h>
int a[10], b[10], c[10];

void test(int x, int y)
{
  int i;
  for (i=0; i<x; i++) {
    a[i] = b[i] + c[i];
  }
}
int main()
{
  printf("  ok \n");
}
