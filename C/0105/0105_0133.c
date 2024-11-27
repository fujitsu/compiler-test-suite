#include "stdio.h"

static void sub1(int m, int n);
int main(){
  sub1(50,1);
}

static void sub1(int m, int n)
{
  int a[100],b[100];
  int i;

  for (i=0; i<100; i++) {
    a[i] = 0;
    b[i] = 1;
  }

  for (i=0; i<m; i++) {
    a[i*n+1] = a[i*n+1] + b[i];
  }

  printf("%d\n",a[0]);
}
