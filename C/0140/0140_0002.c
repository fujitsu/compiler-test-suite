#include <stdio.h>


#define D 4

int a;
int * b = &a;
int ** c = &b;

void sub(p)
int *p;
{
  *p=2;
  *p+=**c;
}
int main()
{
  sub(b);
  if (a==D)
    printf("ok\n");
  else
    printf("%d\n",a);
}
