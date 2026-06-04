#include <stdio.h>
int a[100];

void func(int n)
{
  int i;
  for (i=0; i<n; i++) {
    a[i] = a[i+1] + 1;
  }
}
int main()
{
  printf("  ok \n");
}
