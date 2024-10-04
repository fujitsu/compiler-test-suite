#include <stdio.h>
int func2();
int func1();
 

int main()
{
  printf("13 START\n");
  func1();
  func2();
  printf("13 END  \n");
}

  struct atag { long long int a; } sta;
  struct atag *psta;
  struct aatag {
                  struct { long long int aa;} staa;
               } staaa;

  struct uatag { unsigned long long int ua; } usta;
  struct uatag *pusta;
  struct uaatag {
                  struct { unsigned long long int uaa;} ustaa;
               } ustaaa;
int func1()
{
  long long int x;
  unsigned long long int y;

  psta = &sta;
  sta.a = 1;
  psta->a = sta.a;               
  staaa.staa.aa = psta->a;       
  x = staaa.staa.aa;

  pusta = &usta;
  usta.ua = 1;
  pusta->ua = usta.ua;           
  ustaaa.ustaa.uaa = pusta->ua;  
  y = ustaaa.ustaa.uaa;
  if ( x !=1 || y!=1 )
    printf("13 FUNC1 NG ! X=%d Y=%d",x,y);
}

  union btag0 { long long int b; } b0;
  union btag0 *pb0;
  union btag1 {
                 union btag2 { long long int bx; } b2;
              } b1;

  union ubtag0 { unsigned long long int ub; } ub0;
  union ubtag0 *pub0;
  union ubtag1 {
                 union ubtag2 { unsigned long long int ubx; } ub2;
              } ub1;

int func2()
{
  long long int x;
  unsigned long long int y;

  pb0 = &b0;
  b0.b = 1;
  pb0->b = b0.b ;                
  b1.b2.bx = pb0->b;             
  x = b1.b2.bx;

  pub0 = &ub0;
  ub0.ub = 1;
  pub0->ub = ub0.ub;             
  ub1.ub2.ubx = pub0->ub;        
  y = ub1.ub2.ubx;
  if ( x !=1 || y !=1 )
    printf("13 FUNC2 NG ! X=%d' Y=%d",x,y);
}
