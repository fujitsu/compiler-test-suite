#include <stdio.h>
/*
 *                    90.09.11
 */

 unsigned char            uncsic( signed char i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncunc( unsigned char i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncssi( signed short int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncusi(  unsigned short int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncsli( signed long int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            unculi(  unsigned long  int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncsll(  signed long long int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncull( unsigned long long int i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncfla( float i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            uncdub( double i )
 {
 unsigned char           k;  k=i; return k;
 }
 unsigned char            unclgd(  long double i )
 {
 unsigned char           k;  k=i; return k;
 }
int main()
 {
   if( uncsic(    0   ) !=   0  ) puts(" NG1 ");
   if( uncsic(    1   ) !=   1  ) puts(" NG2 ");
   if( uncsic(   127  ) !=  127 ) puts(" NG3 ");

   if( uncunc(    0   ) !=   0  ) puts(" NG4 ");
   if( uncunc(    1   ) !=   1  ) puts(" NG5 ");
   if( uncunc(   127  ) !=  127 ) puts(" NG6 ");

   if( uncssi(    0   ) !=   0  ) puts(" NG7 ");
   if( uncssi(    1   ) !=   1  ) puts(" NG8 ");
   if( uncssi(   127  ) !=  127 ) puts(" NG9 ");

   if( uncusi(    0   ) !=   0  ) puts(" NG10");
   if( uncusi(    1   ) !=   1  ) puts(" NG11");
   if( uncusi(   127  ) !=  127 ) puts(" NG12");

   if( uncsli(    0   ) !=   0  ) puts(" NG13");
   if( uncsli(    1   ) !=   1  ) puts(" NG14");
   if( uncsli(   127  ) !=  127 ) puts(" NG15");

   if( unculi(    0   ) !=   0  ) puts(" NG16");
   if( unculi(    1   ) !=   1  ) puts(" NG17");
   if( unculi(   127  ) !=  127 ) puts(" NG18");

{
   const signed long long int i_128 = -128;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i127  =  127;
   const signed long long int i0x80 =  0x80;

   if( uncsll(   i0   ) !=   0   ) puts(" NG19");
   if( uncsll(   i1   ) !=   1   ) puts(" NG20");
   if( uncsll(  i127  ) !=   127 ) puts(" NG21");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int u127=127;
   const unsigned long long int u0x80 =  0x80;

   if( uncull(   u0   ) !=   0  ) puts(" NG21");
   if( uncull(   u1   ) !=   1  ) puts(" NG22");
   if( uncull(  u127  ) !=  127 ) puts(" NG23");

}

   if( uncfla(    0.   ) !=   0  ) puts(" NG24");
   if( uncfla(    1.   ) !=   1  ) puts(" NG25");
   if( uncfla(   127.  ) !=  127 ) puts(" NG26");

   if( uncdub(    0.   ) !=   0  ) puts(" NG27");
   if( uncdub(    1.   ) !=   1  ) puts(" NG28");
   if( uncdub(   127.  ) !=  127 ) puts(" NG29");

   if( unclgd(    0.0l ) !=   0  ) puts(" NG30");
   if( unclgd(    1.0l ) !=   1  ) puts(" NG31");
   if( unclgd(   127.0l) !=  127 ) puts(" NG32");

   puts(" PASS ");
}
