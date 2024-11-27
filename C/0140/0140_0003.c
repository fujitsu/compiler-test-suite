#include <stdio.h>


#include <math.h>
#define D 2
int a,b;
int *ap=&a;
int *bp=&b;

void sub()
{
  *ap=(*bp==1)?a+b:a-b;
}
int main()
{
  a = (int)sqrt(1.0);
  b = (int)sqrt(1.0);
  sub();
  if (a==D)
    printf("ok\n");    
  else
    printf("ng ... %d\n",a);

}
