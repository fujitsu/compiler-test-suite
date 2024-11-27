#include <stdio.h>


#define D 1

int a;
int subsub()
{
  return(a+a);
}

int sub(a,b)
int *a,*b;
{
  *a=1;
  *b=subsub();
  return(*a>*b); 
}
int main()
{
  int b;
  b = (sub(&b,&a)>sub(&a,&b))?a:b;
  if (b==D)
    printf("ok\n");
  else
    printf("ng ... %d %d\n",a,b);
}

