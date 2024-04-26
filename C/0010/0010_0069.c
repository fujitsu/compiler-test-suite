#include <stdio.h>

 double                   dubsic( signed char i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubunc( unsigned char i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubssi( signed short int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubusi( unsigned short int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubsli( signed long int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubuli( unsigned long  int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubsll( signed long long int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubull( unsigned long long int i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubfla( float i )
 {
 double                  k;  k=i; return k;
 }
 double                   dubdub( double i )
 {
 double                  k;  k=i; return k;
 }
 double                   dublgd( long double i )
 {
 double                  k;  k=i; return k;
 }
int main()
 {
   if( dubsic(  -128  ) != -128. ) puts(" NG1 ");
   if( dubsic(   -1   ) !=  -1.  ) puts(" NG2 ");
   if( dubsic(    0   ) !=   0.  ) puts(" NG3 ");
   if( dubsic(    1   ) !=   1.  ) puts(" NG4 ");
   if( dubsic(   127  ) !=  127. ) puts(" NG5 ");

   if( dubunc(    0   ) !=   0.  ) puts(" NG6 ");
   if( dubunc(    1   ) !=   1.  ) puts(" NG7 ");
   if( dubunc(   127  ) !=  127. ) puts(" NG8 ");
   if( dubunc(  0x80  ) !=  128. ) puts(" NG8");

   if( dubssi(  -32768 ) != -32768. ) puts(" NG9 ");
   if( dubssi(   -1    ) !=   -1.   ) puts(" NG10");
   if( dubssi(    0    ) !=    0.   ) puts(" NG11");
   if( dubssi(    1    ) !=    1.   ) puts(" NG12");
   if( dubssi(   32767 ) !=  32767. ) puts(" NG13");
   if( dubssi(  0x8000 ) != -32768. ) puts(" NG13*");

   if( dubusi(    0    ) !=   0.    ) puts(" NG14");
   if( dubusi(    1    ) !=   1.    ) puts(" NG15");
   if( dubusi(   32767 ) !=  32767. ) puts(" NG16");
   if( dubusi(  0x8000 ) !=  32768. ) puts(" NG16 ");

   if( dubsli(  -2147483648 ) != -2147483648. ) puts(" NG17");
   if( dubsli(   -1L   ) !=   -1.   ) puts(" NG18");
   if( dubsli(    0    ) !=    0.   ) puts(" NG19");
   if( dubsli(    1    ) !=    1.   ) puts(" NG20");
   if( dubsli( 1000000 ) != 1000000.) puts(" NG21");

   if( dubuli(    0     ) !=     0.  ) puts(" NG22");
   if( dubuli(    1     ) !=     1.  ) puts(" NG23");
   if( dubuli(  1000000 ) != 1000000.) puts(" NG24");

{
   const signed long long int i_min = -1000000;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  1000000;

   if( dubsll( i_min  ) != -1000000 ) puts(" NG25");
   if( dubsll(  i_1   ) !=   -1  ) puts(" NG26");
   if( dubsll(   i0   ) !=   0   ) puts(" NG27");
   if( dubsll(   i1   ) !=   1   ) puts(" NG28");
   if( dubsll( i_max  ) != 1000000 ) puts(" NG29");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax =  1000000;

   if( dubull(   u0   ) !=   0  ) puts(" NG30");
   if( dubull(   u1   ) !=   1  ) puts(" NG31");
   if( dubull(  umax  ) != 1000000 ) puts(" NG32");

}

   if( dubfla( -100.   ) != -100.0   ) puts(" NG33");
   if( dubfla(   -1.   ) !=  -1.0    ) puts(" NG34");
   if( dubfla(    0.   ) !=   0.0    ) puts(" NG35");
   if( dubfla(    1.   ) !=   1.0    ) puts(" NG36");
   if( dubfla(  100.   ) != 100.0    ) puts(" NG37");

   if( dubdub(  -100000.  ) != -100000.0   ) puts(" NG38");
   if( dubdub(   -1.   ) !=  -1.0    ) puts(" NG39");
   if( dubdub(    0.   ) !=   0.0    ) puts(" NG40");
   if( dubdub(    1.   ) !=   1.0    ) puts(" NG41");
   if( dubdub(   100000.  ) !=  100000.0   ) puts(" NG42");

   if( dublgd( -100000000.0L ) != -100000000.0 ) puts(" NG43");
   if( dublgd(   -1.0L ) !=  -1.0    ) puts(" NG44");
   if( dublgd(    0.0L ) !=   0.0    ) puts(" NG45");
   if( dublgd(    1.0L ) !=   1.0    ) puts(" NG46");
   if( dublgd(  100000000.0L ) !=  100000000.0  ) puts(" NG47");

   puts(" PASS ");
}
