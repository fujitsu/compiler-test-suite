#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func4();
int func3();
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  func3();
  func4();
  printf(" END  \n");
exit (0);
}
  struct atag { int a; } sta;
  struct atag *stap;
  struct atag afunc() ;
  struct aatag { struct { int aa;} staa,*staap;} staaa,*staaap;
  struct atag aar[1] ;
  struct atag func01() ;
int func1()
{
  int x,temp;
 
  stap=&sta ;
  staaap=&staaa ;
 
  sta.a=func01().a;              
  staaa.staa.aa = sta.a;         
  staaap->staa.aa=staaa.staa.aa; 
  aar[0].a = staaap->staa.aa ; 
  (*stap).a = aar[0].a;        
  sta.a=(*stap).a ;              
  temp = (x,sta).a ;             
  if ( temp !=1 )
    printf(" FUNC1 NG ! VALUE=%d",temp);
}
struct atag func01()
{
  struct atag f;
  f.a=1;
  return f;
}
  union btag0
  { int b;
  } b0;
  union btag1
  {
    union btag2
    {
      int bx;
    } b2;
  } b1;
  union btag0 *b0p ;
  union btag0 bar[1] ;
  union btag0 func02() ;
  union btag1 *b1p;
  union btag2 *b2p;
int func2()
{
  int x,temp;
  b0p = &b0 ;
  b1p = &b1 ;
  b0.b =func02().b;              
  b1.b2.bx = b0.b ;              
  b1p->b2.bx = b1.b2.bx ;        
  bar[0].b = b1p->b2.bx ;      
  (*b0p).b  = bar[0].b;        
  b0.b =(*b0p).b ;
  temp = (x,b0).b ;              
  if ( temp !=1 )
    printf(" FUNC2 NG ! VALUE=%d",temp);
}
union btag0 func02()
{
  union btag0 f;
  f.b=1;
  return f;
}
  struct ctag01 { int cy; } c01;
  struct ctag02 { int cz; } c02[2];
  struct ctag0 { int c ; } c0 ;
  struct ctag1
  {
    struct ctag2
    {
      int cx;
    } c2;
    struct ctag01 *c2p;
  } c1;
  struct ctag0 *c0p ,**c0pp,*func03() ;
  struct ctag0 *car[1] ;
  struct ctag1 *c1p;
int func3()
{
  int x,temp;
  c0p = &c0 ;
  c0pp= &c0p;
  c1p = &c1 ;
  c1.c2p = &c01;
  car[0]= &c0;
  c0p->c =func03()->c;              
                                    
  c1.c2p->cy  =c0p->c;              
  car[0]->c =  c1.c2p ->cy;       
  c1p->c2p->cy= car[0]->c ;       
  (*c0pp)->c  = car[0]->c;        
  c0.c =(*c0pp)->c ;
  (c02+1)->cz=c0.c;                 
  ((c02+1)-1)->cz=(c02+1)->cz;      
  (&c0)->c=((c02+1)-1)->cz ;        
  temp = (x,c0p)->c ;               
  if ( temp !=1 )
    printf(" FUNC3 NG ! VALUE=%d",c0p->c);
}
struct ctag0 *func03()
{
  struct ctag0 *fp;
  fp=&c0;
  fp->c=1;
  return fp;
}
  union dtag01 { int dy; } d01;
  union dtag02 { int dz; } d02[2];
  union dtag0  { int d ; } d0 ;
  union dtag1
  {
    union dtag2
    {
      int dx;
    } d2;
    union dtag01 *d2p;
  } d1;
  union dtag0 *d0p ,**d0pp,*func04() ;
  union dtag0 *dar[1] ;
  union dtag1 *d1p;
int func4()
{
  int x,temp;
  d0p = &d0 ;
  d0pp= &d0p;
  d1p = &d1 ;
  d1.d2p = &d01;
  dar[0]= &d0;
  d0p->d =func04()->d;              
                                    
  d1.d2p->dy  =d0p->d;              
  dar[0]->d =  d1.d2p ->dy;       
  d1p->d2p->dy= dar[0]->d ;       
  (*d0pp)->d  = dar[0]->d;        
  d0.d =(*d0pp)->d ;
  (d02+1)->dz=d0.d;                 
  ((d02+1)-1)->dz=(d02+1)->dz;      
  (&d0)->d=((d02+1)-1)->dz ;        
  temp = (x,d0p)->d ;               
  if ( temp !=1 )
    printf(" FUNC4 NG ! VALUE=%d",d0.d);
}
union dtag0 *func04()
{
  union dtag0 *fp;
  fp=&d0;
  fp->d=1;
  return fp;
}
