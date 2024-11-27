#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include <math.h>
int func4();
int func3();
int func2();
int func1();

struct tag1
   {
   double a[50][50] ;
   double b[50][50] ;
   double c[50][50] ;
   double d[50][50] ;
   } r8 ;
struct tag2
   {
   float a[50][50] ;
   float b[50][50] ;
   float c[50][50] ;
   float d[50][50] ;
   } r4 ;
struct tag3
   {
   int a[50][50] ;
   int b[50][50] ;
   int c[50][50] ;
   int d[50][50] ;
   } l4 ;
struct tag4
   {
   struct taga
      {
      double a[50][50] ;
      double b[50][50] ;
      } c16a ;
   struct tagb
      {
      double a[50][50] ;
      double b[50][50] ;
      } c16b ;
   struct tagc
      {
      double a[50][50] ;
      double b[50][50] ;
      } c16c ;
   struct tagd
      {
      double a[50][50] ;
      double b[50][50] ;
      } c16d ;
   } cpx ;
struct tag5
   {
   int a[50] ;
   int b[50] ;
   int c[50] ;
   int d[50] ;
   } i4 ;
struct tag6
   {
   struct tage
      {
      float a[50][50] ;
      float b[50][50] ;
      } c16a ;
   struct tagf
      {
      float a[50][50] ;
      float b[50][50] ;
      } c16b ;
   struct tagg
      {
      float a[50][50] ;
      float b[50][50] ;
      } c16c ;
   struct tagh
      {
      float a[50][50] ;
      float b[50][50] ;
      } c16d ;
   } cpy ;
   float  caya,cayb;
#define max(x,y) (((x)<(y))?(y):(x))

#define min(x,y) (((x)>(y))?(x):(y))
#define da1(i,j) r8.a[i-1][j-1]
#define da2(i,j) r8.b[i-1][j-1]
#define da3(i,j) r8.c[i-1][j-1]
#define da4(i,j) r8.d[i-1][j-1]
#define ra1(i,j) r4.a[i-1][j-1]
#define ra2(i,j) r4.b[i-1][j-1]
#define ra3(i,j) r4.c[i-1][j-1]
#define ra4(i,j) r4.d[i-1][j-1]
#define ld1(i,j) l4.a[i-1][j-1]
#define ld2(i,j) l4.b[i-1][j-1]
#define ld3(i,j) l4.c[i-1][j-1]
#define ld4(i,j) l4.d[i-1][j-1]
#define cd1a(i,j) cpx.c16a.a[i-1][j-1]
#define cd1b(i,j) cpx.c16a.b[i-1][j-1]
#define cd2a(i,j) cpx.c16b.a[i-1][j-1]
#define cd2b(i,j) cpx.c16b.b[i-1][j-1]
#define cd3a(i,j) cpx.c16c.a[i-1][j-1]
#define cd3b(i,j) cpx.c16c.b[i-1][j-1]
#define cd4a(i,j) cpx.c16d.a[i-1][j-1]
#define cd4b(i,j) cpx.c16d.b[i-1][j-1]
#define na1(i) i4.a[i-1]
#define na2(i) i4.b[i-1]
#define na3(i) i4.c[i-1]
#define na4(i) i4.d[i-1]
#define ca1a(i,j) cpy.c16a.a[i-1][j-1]
#define ca1b(i,j) cpy.c16a.b[i-1][j-1]
#define ca2a(i,j) cpy.c16b.a[i-1][j-1]
#define ca2b(i,j) cpy.c16b.b[i-1][j-1]
#define ca3a(i,j) cpy.c16c.a[i-1][j-1]
#define ca3b(i,j) cpy.c16c.b[i-1][j-1]
#define ca4a(i,j) cpy.c16d.a[i-1][j-1]
#define ca4b(i,j) cpy.c16d.b[i-1][j-1]
int main()
   {
   int i,j,nn=48 ;
   double dx1,dx2,cdxa,cdxb ;
   float  caxa,caxb,caya,cayb ;
   func1() ;
   for(j=2;j<=nn/2;j++)
      {
      for(i=2;i<=nn;i++)
         {
         dx1 = da1(i,j-1) + da2(na1(i),na2(i)) ;
         dx2 = da3(i,j)   + da4(j,na3(i)) ;
         if(ld1(i,j) ^ ld2(j,j))
            {
            ra1(i,j) = ra2(i-1,j) + ra3(i-1,j) ;
            da1(na1(1),j+1) = dx1 * dx2 ;
            ld1(i,j) = ld1(na1(1),j+1) || ld2(i,j) ;
            }
         else
            {
            ra2(i,j) = ra1(i,j) + ra4(na1(1),na2(j)) ;
            da1(na1(i),j) = dx1 + dx2 ;
            ld1(i,j) = ld2(i,j) ^ ld3(j,na2(i)) ;
            }
         cd1a(i,j) = dx1 * cd2a(i,j) + dx2 * cd2b(i,j) ;
         cd1b(i,j) = dx2 * cd2a(i,j) - dx1 * cd2b(i,j) ;
         }
      }
   func2() ;
   for(j=26;j<=nn;j++)
      {
      for(i=2;i<=j-1;i++)
         {
         dx1 = cd2a(i,j) + cd1b(i,j) ;
         da2(1,na1(j)) = da2(1,na1(j)) + da3(i,j) + da4(i,j) ;
         if(dx1 > 0.0 & ld3(i,j))
            {
            dx1 = cd4a(i,na3(i)) - cd3a(1,na2(i)) ;
            dx1 = abs(dx1) ;
            dx1 = min(dx1,da3(i,j)) ;
            if(ld4(1,na3(j)))
               {
               cdxa = sqrt(cd3a(i,j)) ;
               cdxb = sqrt(cd3b(i,j)) ;
               }
            else
               {
               cdxa = cd3a(j,1) + sqrt(dx1) ;
               cdxb = cd3b(j,1) + sqrt(dx1) ;
               }
            dx1 = max(dx1,da1(i,j)) ;
            }
         else
            {
            dx1 = cd2a(i,j) + cd3a(i,j) + dx1 ;
            cdxa = sin(cd4a(i,j)) + sin(cd4b(i,j)) ;
            cdxb = sin(cd4a(i,j)) - sin(cd4b(i,j)) ;
            }
         da2(j,i) = dx1 + cdxa - cdxb ;
         }
      }
   func3() ;
   caya = 0.0 ;
   cayb = 0.0 ;
   for(j=2;j<=nn/2;j++)
      {
      for(i=2;i<=nn;i++)
         {
         ca1a(i,j) = ca2a(i+1,j) + ca3a(i-1,j) - ca4a(i,j) ;
         ca1b(i,j) = ca2b(i+1,j) + ca3b(i-1,j) - ca4b(i,j) ;
         ca2a(i,j) = ca1a(i-1,j) + ca3a(i,j)   * ca4a(i-1,j) ;
         ca2b(i,j) = ca1b(i-1,j) + ca3b(i,j)   * ca4b(i-1,j) ;
         caxa      = ca1a(i,j) - ca2a(j,i) ;
         caxb      = ca1b(i,j) - ca2b(j,i) ;
         ca3a(i,j) = ra1(i,j) - ra2(1,na1(j)) ;
         ca3b(i,j) = ra1(i,j) + ra2(1,na1(j)) ;
         caya      = caya + caxa - ca1a(i,j) ;
         cayb      = cayb + caxb - ca1b(i,j) ;
         ca4a(i+1,j) = ca2a(i+1,j) + ca1a(i,j) ;
         ca4b(i+1,j) = ca2b(i+1,j) + ca1b(i,j) ;
         }
      }
   func4() ;
exit (0);
   }
int func1()
   {
   int i,j ;
   for(j=1;j<=50;j++)
      {
      for(i=1;i<=50;i++)
         {
         da1(i,j) = 1.0 ;
         da2(i,j) = 2.0 ;
         da3(i,j) = 3.0 ;
         da4(i,j) = (double)i ;
         ra1(i,j) = 1.0 ;
         ra2(i,j) = 3.0 ;
         ra3(i,j) = (float)i ;
         ra4(i,j) = 2.0 ;
         ld1(i,j) = 0 ;
         ld2(i,j) = 1 ;
         ld3(i,j) = 0 ;
         ld4(i,j) = 1 ;
         ca1a(i,j) = 1.0 ;
         ca1b(i,j) = 4.0 ;
         ca2a(i,j) = 2.0 ;
         ca2b(i,j) = 3.0 ;
         ca3a(i,j) = 3.0 ;
         ca3b(i,j) = 2.0 ;
         ca4a(i,j) = 4.0 ;
         ca4b(i,j) = 1.0 ;
         }
      }
   for(j=1;j<=50;j+=2)
      {
      for(i=2;i<=50;i+=2)
         {
         ld1(i,j) = 1 ;
         ld3(i,j) = 1 ;
         }
      }
   for(i=1;i<=50;i++)
      {
      na1(i) = i ;
      na2(i) = fmod(i,3) + 1 ;
      na3(i) = 51 - i ;
      na4(i) = 1 ;
      }
   return 0;
   }
int func2()
   {
   int i,j ;
   for(j=1;j<=50;j++)
      {
      for(i=1;i<=50;i++)
         {
         printf("da1(%2d,%2d)=%6.1f  ra1(%2d,%2d)=%6.1f",
                i,j,da1(i,j),i,j,ra1(i,j)) ;
         printf("  cd1a(%2d,%2d)=%6.1f  cd1b(%2d,%2d)=%6.1f\n",
                i,j,cd1a(i,j),i,j,cd1b(i,j)) ;
         }
      }
   for(j=1;j<=50;j++)
      {
      for(i=1;i<=50;i++)
         {
         printf("ld1(%2d,%2d)=%d\n",i,j,ld1(i,j)) ;
         }
      }
   return 0;
   }
int func3()
   {
   int i,j ;
   for(j=1;j<=50;j++)
      {
      for(i=1;i<=50;i++)
         {
         printf("da2(%2d,%2d)=%10.3f\n",i,j,da2(i,j)) ;
         }
      }
   return 0;
   }
int func4()
   {
   int    i,j;
   for(j=1;j<=50;j++)
      {
      for(i=1;i<=50;i++)
         {
         printf("ca4a(%2d,%2d)=%10.3f, ca4b(%2d,%2d)=%10.3f\n",
                i,j,ca4a(i,j),i,j,ca4b(i,j)) ;
         }
      }
   printf("caya => %10.3f  cayb => %10.3f\n",caya,cayb) ;
   return 0;
   }
