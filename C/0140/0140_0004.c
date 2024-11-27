#include <stdio.h>


#include <math.h>
#define D 2
int a;
int *ap=&a;
int *bp=&a;

void sub()
{
  *ap=(*bp==1)?(*ap+*bp):(*ap-*bp);
}
int main()
{
  a   = 1;
  *ap = (int)sqrt((double)a);
  *bp = (int)sqrt((double)a);
  sub();
  if (a==D)
    printf("ok\n");    
  else
    printf("ng ... %d\n",a);

}
