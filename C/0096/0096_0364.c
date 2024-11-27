#include  <stdio.h>
int func1();

struct estr {
float x;
int y;
int a[10];
};
struct west {
int b[10];
int z;
float w;
};
int func1();
int main()
{
  printf(" START\n");
  func1();                           
  printf(" END  \n");
}
int func1()
{
  char *ap ;
  struct estr ea;
  struct west eb;
  struct estr *pint1;
  struct estr *pint2;
  struct west *pint3;
  float  ff;
  int num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=1;
  pint1->a[num]=20;
  pint3->b[num]=20;
  pint1->x=1.0;
  pint1->y=10;
  pint3->w=pint1->x;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf(" ok\n");
  else
  printf(" ng\n");
  if (pint3->w==1.0 ) printf(" ok\n");
  else
  printf(" ng\n");
  return 0;
}
