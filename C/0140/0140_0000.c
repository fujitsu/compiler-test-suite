#include <stdio.h>


int f;
int a[100];
int sub(b)
int b[100];
{
  int i;
  for (i=0; i<100; i++) {
    a[i]=b[i]*f;
  }
}
int main()
{
  int b[100];
  int sum;
  int i;

  for (i=0; i<100; i++) {
    b[i]=i;
  }
  f=b[1];
  sub(b);
  sum = 0;
  for (i=0; i<100; i++) {
    sum+=a[i];
  }
  printf("%d\n",sum);
}

