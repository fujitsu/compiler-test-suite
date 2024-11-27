#include  <stdio.h>
int func1();

struct estr {
int x;
int y;
int a[11];
};
struct west {
int b[10];
int z;
float w;
};
struct estr *pint1;
struct estr *pint2;
struct west *pint3;
int func1();
int main()
{
  printf(" START\n");
  func1();                           
  printf(" END  \n");
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
  int  num;
  pint1=&ea;
  pint2=pint1;
  pint3=&eb;
  num=5;
  pint1->a[num]=20;
  pint3->b[num]=20;
  num=1;
  pint2->a[num]=10;
  num=pint2->a[num];
  if (num==10) printf(" ok\n");
  else
  printf(" ng\n");
  pint2->a[num]=10;
  num=pint1->a[num];
  pint3->b[3]=num;
  if (pint3->b[3]==10) printf(" ok\n");
  else
  printf(" ng\n");
  return 0;
}
