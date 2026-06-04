#include <stdio.h>
int a[10][10], b[10][10], c[10][10];

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
