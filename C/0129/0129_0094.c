#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int func1();

struct estr {
int x;
int y;
int a[10];
};
struct west {
int b[10];
int z;
float w;
};
int main()
{
  printf(" START\n");
  func1();                           
  printf(" END  \n");
exit (0);
}
int func1()
{
  static  char stat1[21] ={0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0,0,0,0,0,
                          0         };
  char *ap ;
  struct estr ea;
  struct west eb;
  struct estr *pint1;
  struct estr *pint2;
  struct west *pint3;
  int  num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint1->a[num]=10;
  pint2->a[num]=pint1->a[num];
  if (pint1->a[num]==10) printf(" ok\n");
  else
  printf(" ng\n");
  return 0;
}
