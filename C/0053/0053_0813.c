
#include <stdio.h>  INVALID

int A;
int ;
enum TAG1;
#if __GNUC__
static int F();
#endif 
int main() {
   int ;
#if __GNUC__
    printf("A OK\n");
#else 
    long float LF;
    float long FL;
    if( sizeof(LF)==sizeof(double) &&
        sizeof(FL)==sizeof(double) &&
        sizeof(long float)==sizeof(double) &&
        sizeof(float long)==sizeof(double) )
     printf("A OK\n");
    else
     printf("A NG\n");
#endif 

   printf("B OK\n");

{
  enum TAG2;
  printf("C OK\n");
}

{
  A = 10;
  if( sizeof(A)==sizeof(int) && A==10 )
   printf("D OK\n");
  else
   printf("D NG\n");
}
{
int *P=0,I=0;
if(P==0)printf("E-1 OK\n");else printf("E-1 NG\n");
if(P!=0)printf("E-2 NG\n");else printf("E-2 OK\n");
if(P<=0)printf("E-3 OK\n");else printf("E-3 NG\n");
if(P>=0)printf("E-4 OK\n");else printf("E-4 NG\n");
if(P< 0)printf("E-5 NG\n");else printf("E-5 OK\n");
if(P> 0)printf("E-6 NG\n");else printf("E-6 OK\n");
if(0==P)printf("E-7 OK\n");else printf("E-7 NG\n");
if(0!=P)printf("E-8 NG\n");else printf("E-8 OK\n");
if(0<=P)printf("E-9 OK\n");else printf("E-9 NG\n");
if(0>=P)printf("E-10 OK\n");else printf("E-10 NG\n");
if(0< P)printf("E-11 NG\n");else printf("E-11 OK\n");
if(0> P)printf("E-12 NG\n");else printf("E-12 OK\n");

if(P==I)printf("E-13 OK\n");else printf("E-13 NG\n");
if(P!=I)printf("E-14 NG\n");else printf("E-14 OK\n");
if(P<=I)printf("E-15 OK\n");else printf("E-15 NG\n");
if(P>=I)printf("E-16 OK\n");else printf("E-16 NG\n");
if(P< I)printf("E-17 NG\n");else printf("E-17 OK\n");
if(P> I)printf("E-18 NG\n");else printf("E-18 OK\n");
if(I==P)printf("E-19 OK\n");else printf("E-19 NG\n");
if(I!=P)printf("E-20 NG\n");else printf("E-20 OK\n");
if(I<=P)printf("E-21 OK\n");else printf("E-21 NG\n");
if(I>=P)printf("E-22 OK\n");else printf("E-22 NG\n");
if(I< P)printf("E-23 NG\n");else printf("E-23 OK\n");
if(I> P)printf("E-24 NG\n");else printf("E-24 OK\n");

if(P==5)printf("E-25 NG\n");else printf("E-25 OK\n");
if(P!=5)printf("E-26 OK\n");else printf("E-26 NG\n");
if(P<=5)printf("E-27 OK\n");else printf("E-27 NG\n");
if(P>=5)printf("E-28 NG\n");else printf("E-28 OK\n");
if(P< 5)printf("E-29 OK\n");else printf("E-29 NG\n");
if(P> 5)printf("E-30 NG\n");else printf("E-30 OK\n");
if(5==P)printf("E-31 NG\n");else printf("E-31 OK\n");
if(5!=P)printf("E-32 OK\n");else printf("E-32 NG\n");
if(5<=P)printf("E-33 NG\n");else printf("E-33 OK\n");
if(5>=P)printf("E-34 OK\n");else printf("E-34 NG\n");
if(5< P)printf("E-35 NG\n");else printf("E-35 OK\n");
if(5> P)printf("E-36 OK\n");else printf("E-36 NG\n");
}

{
#if !__GNUC__
  static int F();
#endif 
  if( F()==10 )
   printf("F OK \n");
  else
   printf("F NG \n");
}

#define  A 1
#define  A 2
#if A==2
  printf(" @' OK'\n ");
#else
  printf(" @' NG'\n ");
#endif

}
static int F();
static int F()
{
  return 10;
}
