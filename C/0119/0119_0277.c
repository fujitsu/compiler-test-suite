#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

 unsigned long  int       ulisic( i )
 signed char                  i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       uliunc( i )
 unsigned char            i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulissi( i )
 signed short int i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       uliusi( i )
 unsigned short int       i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulisli( i )
 signed long int i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       uliuli( i )
 unsigned long  int       i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulisll( i )
 signed long long int i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       uliull( i )
 unsigned long long int i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulifla( i )
 float                    i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulidub( i )
 double                   i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
 unsigned long  int       ulilgd( i )
 long double                  i ;
 {
 unsigned long  int      k;  k=i; return k;
 }
int main()
 {
   if( ulisic(    0   ) !=   0  ) puts(" NG1 ");
   if( ulisic(    1   ) !=   1  ) puts(" NG2 ");
   if( ulisic(   127  ) !=  127 ) puts(" NG3 ");

   if( uliunc(    0   ) !=   0  ) puts(" NG4 ");
   if( uliunc(    1   ) !=   1  ) puts(" NG5 ");
   if( uliunc(   127  ) !=  127 ) puts(" NG6 ");

   if( ulissi(    0   ) !=   0  ) puts(" NG7 ");
   if( ulissi(    1   ) !=   1  ) puts(" NG8 ");
   if( ulissi( 32767  ) != 32767) puts(" NG9 ");

   if( uliusi(    0   ) !=   0  ) puts(" NG10");
   if( uliusi(    1   ) !=   1  ) puts(" NG11");
   if( uliusi( 65535  ) != 65535) puts(" NG12");

   if( ulisli(    0   ) !=   0  ) puts(" NG13");
   if( ulisli(    1   ) !=   1  ) puts(" NG14");
   if( ulisli( 2147483647 ) != 2147483647) puts(" NG15");

   if( uliuli(    0   ) !=   0  ) puts(" NG16");
   if( uliuli(    1   ) !=   1  ) puts(" NG17");
   if( uliuli( 4294967295) != 4294967295) puts(" NG18");

{
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int imax  = 4294967295;

   if( ulisll(   i0   ) !=   0   ) puts(" NG19");
   if( ulisll(   i1   ) !=   1   ) puts(" NG20");
   if( ulisll(  imax  ) != 4294967295) puts(" NG21");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax  = 4294967295;

   if( uliull(   u0   ) !=   0  ) puts(" NG21");
   if( uliull(   u1   ) !=   1  ) puts(" NG22");
   if( uliull(   umax ) != 4294967295 ) puts(" NG23");

}

   if( ulifla(    0.   ) !=   0  ) puts(" NG24");
   if( ulifla(    1.   ) !=   1  ) puts(" NG25");
   if( ulifla(  100.   ) != 100. ) puts(" NG26");

   if( ulidub(    0.   ) !=   0  ) puts(" NG27");
   if( ulidub(    1.   ) !=   1  ) puts(" NG28");
   if( ulidub(  100.   ) != 100  ) puts(" NG29");

   if( ulilgd(    0.0L ) !=   0  ) puts(" NG30");
   if( ulilgd(    1.0L ) !=   1  ) puts(" NG31");
   if( ulilgd(  100.0L ) != 100  ) puts(" NG32");

   puts(" SCRCV06 PASS ");
exit (0);
}
