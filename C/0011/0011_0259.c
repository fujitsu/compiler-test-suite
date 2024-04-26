#include  <stdio.h>

 signed long long int sllsic(signed char i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllunc(unsigned char i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllssi(signed short int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllusi(unsigned short int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllsli(signed long int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int slluli(unsigned long int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllsll(signed long long int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllull(unsigned long long int i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int sllfla(float i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int slldub(double i)
 {
 signed long long int k; k=i; return k;
 }

 signed long long int slllgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
 )
 {
 signed long long int k; k=i; return k;
 }

int main()
 {
   signed long long int sllsic(signed char i);
   signed long long int sllunc(unsigned char i);
   signed long long int sllssi(signed short int i);
   signed long long int sllusi(unsigned short int i);
   signed long long int sllsli(signed long int i);
   signed long long int slluli(unsigned long int i);
   signed long long int sllsll(signed long long int i);
   signed long long int sllull(unsigned long long int i);
   signed long long int sllfla(float i);
   signed long long int slldub(double i);
   signed long long int slllgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
   );

   puts(" NG with * -> ANSI ");
   if( sllsic(  -128  ) != -128 ) puts(" NG1 ");
   if( sllsic(   -1   ) !=  -1  ) puts(" NG2 ");
   if( sllsic(    0   ) !=   0  ) puts(" NG3 ");
   if( sllsic(    1   ) !=   1  ) puts(" NG4 ");
   if( sllsic(   127  ) !=  127 ) puts(" NG5 ");

   if( sllunc(    0   ) !=   0  ) puts(" NG6 ");
   if( sllunc(    1   ) !=   1  ) puts(" NG7 ");
   if( sllunc(   127  ) !=  127 ) puts(" NG8 ");
   if( sllunc(  0x80  ) !=  128 ) puts(" NG8 ");

   if( sllssi(  -32768 ) != -32768 ) puts(" NG9 ");
   if( sllssi(   -1    ) !=   -1   ) puts(" NG10");
   if( sllssi(    0    ) !=    0   ) puts(" NG11");
   if( sllssi(    1    ) !=    1   ) puts(" NG12");
   if( sllssi(   32767 ) !=  32767 ) puts(" NG13");
   if( sllssi(  0x8000 ) != -32768 ) puts(" NG13*");

   if( sllusi(    0    ) !=   0    ) puts(" NG14");
   if( sllusi(    1    ) !=   1    ) puts(" NG15");
   if( sllusi(   32767 ) !=  32767 ) puts(" NG16");
   if( sllusi(  0x8000 ) !=  32768 ) puts(" NG16 ");

   if( sllsli(   -1    ) !=   -1   ) puts(" NG18");
   if( sllsli(    0    ) !=    0   ) puts(" NG19");
   if( sllsli(    1    ) !=    1   ) puts(" NG20");
   if( sllsli(   2147483647 ) != 2147483647 ) puts(" NG21");

   if( slluli(    0     ) !=     0  ) puts(" NG22");
   if( slluli(    1     ) !=     1  ) puts(" NG23");
   if( slluli( 2147483647 ) != 2147483647 ) puts(" NG24");
#if defined(INT64) || defined( __sparcv9) ||  defined(__x86_64__) ||  defined(__aarch64__)
   if( slluli(0xffffffff80000000) != -2147483648 ) puts(" NG24*");
#endif
{
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;

   if( sllsll(  i_1   ) !=   -1  ) puts(" NG26");
   if( sllsll(   i0   ) !=   0   ) puts(" NG27");
   if( sllsll(   i1   ) !=   1   ) puts(" NG28");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;

   if( sllull(   u0   ) !=   0  ) puts(" NG30");
   if( sllull(   u1   ) !=   1  ) puts(" NG31");

}

   if( sllfla( -100.   ) != -100   ) puts(" NG33");
   if( sllfla(   -1.   ) !=  -1    ) puts(" NG34");
   if( sllfla(    0.   ) !=   0    ) puts(" NG35");
   if( sllfla(    1.   ) !=   1    ) puts(" NG36");
   if( sllfla(  100.   ) != 100    ) puts(" NG37");

   if( slldub(  -100.  ) != -100   ) puts(" NG38");
   if( slldub(   -1.   ) !=  -1    ) puts(" NG39");
   if( slldub(    0.   ) !=   0    ) puts(" NG40");
   if( slldub(    1.   ) !=   1    ) puts(" NG41");
   if( slldub(   100.  ) !=  100   ) puts(" NG42");

   if( slllgd( -100.0L ) != -100   ) puts(" NG43");
   if( slllgd(   -1.0L ) !=  -1    ) puts(" NG44");
   if( slllgd(    0.0L ) !=   0    ) puts(" NG45");
   if( slllgd(    1.0L ) !=   1    ) puts(" NG46");
   if( slllgd(  100.0L ) !=  100    ) puts(" NG47");

   puts(" PASS ");
}
