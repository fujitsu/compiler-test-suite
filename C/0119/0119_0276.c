#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
 unsigned short int       usisic( i )
 signed char                  i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usiunc( i )
 unsigned char            i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usissi( i )
 signed short int i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usiusi( i )
 unsigned short int       i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usisli( i )
 signed long int i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usiuli( i )
 unsigned long  int       i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usisll( i )
 signed long long int i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usiull( i )
 unsigned long long int i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usifla( i )
 float                    i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usidub( i )
 double                   i ;
 {
 unsigned short int      k;  k=i; return k;
 }
 unsigned short int       usilgd( i )
 long double                  i ;
 {
 unsigned short int      k;  k=i; return k;
 }
int main()
 {
   if( usisic(    0   ) !=   0  ) puts(" NG1 ");
   if( usisic(    1   ) !=   1  ) puts(" NG2 ");
   if( usisic(   127  ) !=  127 ) puts(" NG3 ");

   if( usiunc(    0   ) !=   0  ) puts(" NG4 ");
   if( usiunc(    1   ) !=   1  ) puts(" NG5 ");
   if( usiunc(   127  ) !=  127 ) puts(" NG6 ");

   if( usissi(    0   ) !=   0  ) puts(" NG7 ");
   if( usissi(    1   ) !=   1  ) puts(" NG8 ");
   if( usissi( 32767  ) != 32767) puts(" NG9 ");

   if( usiusi(    0   ) !=   0  ) puts(" NG10");
   if( usiusi(    1   ) !=   1  ) puts(" NG11");
   if( usiusi( 65535  ) != 65535) puts(" NG12");

   if( usisli(    0   ) !=   0  ) puts(" NG13");
   if( usisli(    1   ) !=   1  ) puts(" NG14");
   if( usisli( 65535  ) != 65535) puts(" NG15");

   if( usiuli(    0   ) !=   0  ) puts(" NG16");
   if( usiuli(    1   ) !=   1  ) puts(" NG17");
   if( usiuli( 65535  ) != 65535) puts(" NG18");

{
   const signed long long int i_128 = -128;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i65535 = 65535;
   const signed long long int i0x80 =  0x80;

   if( usisll(   i0   ) !=   0   ) puts(" NG19");
   if( usisll(   i1   ) !=   1   ) puts(" NG20");
   if( usisll(  i65535 ) !=  65535 ) puts(" NG21");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int u65535=65535;
   const unsigned long long int u0x80 =  0x80;

   if( usiull(   u0   ) !=   0  ) puts(" NG21");
   if( usiull(   u1   ) !=   1  ) puts(" NG22");
   if( usiull(  u65535 ) != 65535 ) puts(" NG23");

}

   if( usifla(    0.   ) !=   0  ) puts(" NG24");
   if( usifla(    1.   ) !=   1  ) puts(" NG25");
   if( usifla(   65535. ) != 65535 ) puts(" NG26");

   if( usidub(    0.   ) !=   0  ) puts(" NG27");
   if( usidub(    1.   ) !=   1  ) puts(" NG28");
   if( usidub(   65535. ) != 65535 ) puts(" NG29");

   if( usilgd(    0.0L ) !=   0  ) puts(" NG30");
   if( usilgd(    1.0L ) !=   1  ) puts(" NG31");
   if( usilgd(   65535.0L) != 65535 ) puts(" NG32");

   puts(" SCRCV04 PASS ");
exit (0);
}
