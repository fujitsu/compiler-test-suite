#include <stdio.h>

 unsigned long long int ullsic( signed char i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullunc( unsigned char i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullssi( signed short int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullusi( unsigned short int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullsli( signed long int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ulluli( unsigned long  int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullsll( signed long long int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullull( unsigned long long int i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ullfla( float i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ulldub( double i )
 {
 unsigned long long int k; k=i; return k;
 }
 unsigned long long int ulllgd( long double i )
 {
 unsigned long long int k; k=i; return k;
 }
int main()
 {
   if( ullsic(    0   ) !=   0  ) puts(" NG1 ");
   if( ullsic(    1   ) !=   1  ) puts(" NG2 ");
   if( ullsic(   127  ) !=  127 ) puts(" NG3 ");

   if( ullunc(    0   ) !=   0  ) puts(" NG4 ");
   if( ullunc(    1   ) !=   1  ) puts(" NG5 ");
   if( ullunc(   127  ) !=  127 ) puts(" NG6 ");

   if( ullssi(    0   ) !=   0  ) puts(" NG7 ");
   if( ullssi(    1   ) !=   1  ) puts(" NG8 ");
   if( ullssi( 32767  ) != 32767) puts(" NG9 ");

   if( ullusi(    0   ) !=   0  ) puts(" NG10");
   if( ullusi(    1   ) !=   1  ) puts(" NG11");
   if( ullusi( 65535  ) != 65535) puts(" NG12");

   if( ullsli(    0   ) !=   0  ) puts(" NG13");
   if( ullsli(    1   ) !=   1  ) puts(" NG14");
   if( ullsli( 2147483647 ) != 2147483647) puts(" NG15");

   if( ulluli(    0   ) !=   0  ) puts(" NG16");
   if( ulluli(    1   ) !=   1  ) puts(" NG17");
   if( ulluli( 4294967295) != 4294967295) puts(" NG18");

{
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;

   if( ullsll(   i0   ) !=   0   ) puts(" NG19");
   if( ullsll(   i1   ) !=   1   ) puts(" NG20");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;

   if( ullull(   u0   ) !=   0  ) puts(" NG21");
   if( ullull(   u1   ) !=   1  ) puts(" NG22");

}

   if( ullfla(    0.   ) !=   0  ) puts(" NG24");
   if( ullfla(    1.   ) !=   1  ) puts(" NG25");
   if( ullfla(  100.   ) != 100. ) puts(" NG26");

   if( ulldub(    0.   ) !=   0  ) puts(" NG27");
   if( ulldub(    1.   ) !=   1  ) puts(" NG28");
   if( ulldub(  100.   ) != 100  ) puts(" NG29");

   if( ulllgd(    0.0L ) !=   0  ) puts(" NG30");
   if( ulllgd(    1.0L ) !=   1  ) puts(" NG31");
   if( ulllgd(  100.0L ) != 100  ) puts(" NG32");

   puts(" PASS ");
}
