#include <stdio.h>

int a[100][100];

void func(int i)
{
  int j;
  for (j=0; j<i; j++) {
    a[i][j] = 3.8;
  }
}
int main()
{
  printf("  ok \n");
}
