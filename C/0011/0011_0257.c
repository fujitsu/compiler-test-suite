#include  <stdio.h>

 signed long int slisic(signed char i)
 {
 signed long int k; k=i; return k;
 }

 signed long int sliunc(unsigned char i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slissi(signed short int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int sliusi(unsigned short int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slisli(signed long int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int sliuli(unsigned long int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slisll(signed long long int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int sliull(unsigned long long int i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slifla(float i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slidub(double i)
 {
 signed long int k; k=i; return k;
 }

 signed long int slilgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
 )
 {
 signed long int k; k=i; return k;
 }

int main()
 {
   signed long int slisic(signed char i);
   signed long int sliunc(unsigned char i);
   signed long int slissi(signed short int i);
   signed long int sliusi(unsigned short int i);
   signed long int slisli(signed long int i);
   signed long int sliuli(unsigned long int i);
   signed long int slisll(signed long long int i);
   signed long int sliull(unsigned long long int i);
   signed long int slifla(float i);
   signed long int slidub(double i);
   signed long int slilgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
   );

   puts(" NG with * -> ANSI ");
   if( slisic(  -128  ) != -128 ) puts(" NG1 ");
   if( slisic(   -1   ) !=  -1  ) puts(" NG2 ");
   if( slisic(    0   ) !=   0  ) puts(" NG3 ");
   if( slisic(    1   ) !=   1  ) puts(" NG4 ");
   if( slisic(   127  ) !=  127 ) puts(" NG5 ");

   if( sliunc(    0   ) !=   0  ) puts(" NG6 ");
   if( sliunc(    1   ) !=   1  ) puts(" NG7 ");
   if( sliunc(   127  ) !=  127 ) puts(" NG8 ");
   if( sliunc(  0x80  ) !=  128 ) puts(" NG8 ");

   if( slissi(  -32768 ) != -32768 ) puts(" NG9 ");
   if( slissi(   -1    ) !=   -1   ) puts(" NG10");
   if( slissi(    0    ) !=    0   ) puts(" NG11");
   if( slissi(    1    ) !=    1   ) puts(" NG12");
   if( slissi(   32767 ) !=  32767 ) puts(" NG13");
   if( slissi(  0x8000 ) != -32768 ) puts(" NG13*");

   if( sliusi(    0    ) !=   0    ) puts(" NG14");
   if( sliusi(    1    ) !=   1    ) puts(" NG15");
   if( sliusi(   32767 ) !=  32767 ) puts(" NG16");
   if( sliusi(  0x8000 ) !=  32768 ) puts(" NG16");

   if( slisli(  -2147483648 ) != -2147483648 ) puts(" NG17");
   if( slisli(   -1L   ) !=   -1   ) puts(" NG18");
   if( slisli(    0    ) !=    0   ) puts(" NG19");
   if( slisli(    1    ) !=    1   ) puts(" NG20");
   if( slisli(   2147483647 ) != 2147483647 ) puts(" NG21");
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   if( slisli(  0xffffffff80000000LL ) != -2147483648 ) puts(" NG21*");
#else
   if( slisli(  0x80000000 ) != -2147483648 ) puts(" NG21*");
#endif

   if( sliuli(    0     ) !=     0  ) puts(" NG22");
   if( sliuli(    1     ) !=     1  ) puts(" NG23");
   if( sliuli( 2147483647 ) != 2147483647 ) puts(" NG24");
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   if( sliuli(0xffffffff80000000LL) != -2147483648 ) puts(" NG24*");
#else
   if( sliuli(0x80000000) != -2147483648 ) puts(" NG24*");
#endif

{
   const signed long long int i_min = -2147483648;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  2147483647;
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   const signed long long int i0xffffffff80000000= 0xffffffff80000000LL;
#else
   const signed long long int i0x80000000= 0x80000000;
#endif

   if( slisll( i_min  ) != -2147483648) puts(" NG25");
   if( slisll(  i_1   ) !=   -1  ) puts(" NG26");
   if( slisll(   i0   ) !=   0   ) puts(" NG27");
   if( slisll(   i1   ) !=   1   ) puts(" NG28");
   if( slisll( i_max  ) != 2147483647 ) puts(" NG29");
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   if( slisll( i0xffffffff80000000) != -2147483648) puts(" NG29*");
#else
   if( slisll( i0x80000000) != -2147483648) puts(" NG29*");
#endif

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax=2147483647;
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   const unsigned long long int u0xffffffff80000000 =  0xffffffff80000000;
#else
   const unsigned long long int u0x80000000 =  0x80000000;
#endif

   if( sliull(   u0   ) !=   0  ) puts(" NG30");
   if( sliull(   u1   ) !=   1  ) puts(" NG31");
   if( sliull(  umax  ) !=  2147483647 ) puts(" NG32");
#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   if( sliull( u0xffffffff80000000) != -2147483648 ) puts(" NG32*");
#else
   if( sliull( u0x80000000) != -2147483648 ) puts(" NG32*");
#endif

}

   if( slifla(-2147483648. ) != -2147483648 ) puts(" NG33");
   if( slifla(   -1.   ) !=  -1    ) puts(" NG34");
   if( slifla(    0.   ) !=   0    ) puts(" NG35");
   if( slifla(    1.   ) !=   1    ) puts(" NG36");
   if( slifla(  100.   ) != 100    ) puts(" NG37");

   if( slidub(-2147483648. ) != -2147483648 ) puts(" NG38");
   if( slidub(   -1.   ) !=  -1    ) puts(" NG39");
   if( slidub(    0.   ) !=   0    ) puts(" NG40");
   if( slidub(    1.   ) !=   1    ) puts(" NG41");

   if( slilgd(-2147483648.0l) != -2147483648 ) puts(" NG43");
   if( slilgd(   -1.0l ) !=  -1    ) puts(" NG44");
   if( slilgd(    0.0l ) !=   0    ) puts(" NG45");
   if( slilgd(    1.0l ) !=   1    ) puts(" NG46");

   puts(" PASS ");
}
