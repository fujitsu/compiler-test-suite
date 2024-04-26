#include  <stdio.h>

 signed short int ssisic(signed char i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssiunc(unsigned char i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssissi(signed short int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssiusi(unsigned short int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssisli(signed long int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssiuli(unsigned long int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssisll(signed long long int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssiull(unsigned long long int i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssifla(float i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssidub(double i)
 {
 signed short int k; k=i; return k;
 }

 signed short int ssilgd(
#ifdef NO_LONG_LONG
 double                  i
#else
 long double                  i
#endif
 )
 {
 signed short int k; k=i; return k;
 }

int main()
 {
   signed short int ssisic(signed char i);
   signed short int ssiunc(unsigned char i);
   signed short int ssissi(signed short int i);
   signed short int ssiusi(unsigned short int i);
   signed short int ssisli(signed long int i);
   signed short int ssiuli(unsigned long int i);
   signed short int ssisll(signed long long int i);
   signed short int ssiull(unsigned long long int i);
   signed short int ssifla(float i);
   signed short int ssidub(double i);
   signed short int ssilgd(
#ifdef NO_LONG_LONG
 double                  i
#else
 long double                  i
#endif
   );

   puts(" NG with * -> ANSI ");
   if( ssisic(  -128  ) != -128 ) puts(" NG1 ");
   if( ssisic(   -1   ) !=  -1  ) puts(" NG2 ");
   if( ssisic(    0   ) !=   0  ) puts(" NG3 ");
   if( ssisic(    1   ) !=   1  ) puts(" NG4 ");
   if( ssisic(   127  ) !=  127 ) puts(" NG5 ");

   if( ssiunc(    0   ) !=   0  ) puts(" NG6 ");
   if( ssiunc(    1   ) !=   1  ) puts(" NG7 ");
   if( ssiunc(   127  ) !=  127 ) puts(" NG8 ");
   if( ssiunc(  0x80  ) !=  128 ) puts(" NG8 ");

   if( ssissi(  -32768 ) != -32768 ) puts(" NG9 ");
   if( ssissi(   -1    ) !=   -1   ) puts(" NG10");
   if( ssissi(    0    ) !=    0   ) puts(" NG11");
   if( ssissi(    1    ) !=    1   ) puts(" NG12");
   if( ssissi(   32767 ) !=  32767 ) puts(" NG13");
   if( ssissi(  0x8000 ) != -32768 ) puts(" NG13*");

   if( ssiusi(    0    ) !=   0    ) puts(" NG14");
   if( ssiusi(    1    ) !=   1    ) puts(" NG15");
   if( ssiusi(   32767 ) !=  32767 ) puts(" NG16");
   if( ssiusi(  0x8000 ) != -32768 ) puts(" NG16*");

   if( ssisli(  -32768 ) != -32768 ) puts(" NG17");
   if( ssisli(   -1    ) !=   -1   ) puts(" NG18");
   if( ssisli(    0    ) !=    0   ) puts(" NG19");
   if( ssisli(    1    ) !=    1   ) puts(" NG20");
   if( ssisli(   32767 ) !=  32767 ) puts(" NG21");
   if( ssisli(  0x8000 ) != -32768 ) puts(" NG21*");

   if( ssiuli(    0    ) !=     0  ) puts(" NG22");
   if( ssiuli(    1    ) !=     1  ) puts(" NG23");
   if( ssiuli(   32767 ) !=  32767 ) puts(" NG24");
   if( ssiuli(  0x8000 ) != -32768 ) puts(" NG24*");

{
   const signed long long int i_min = -32768;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  32767;
   const signed long long int i0x8000 =  0x8000;

   if( ssisll( i_min  ) != -32768) puts(" NG25");
   if( ssisll(  i_1   ) !=   -1  ) puts(" NG26");
   if( ssisll(   i0   ) !=   0   ) puts(" NG27");
   if( ssisll(   i1   ) !=   1   ) puts(" NG28");
   if( ssisll( i_max  ) != 32767 ) puts(" NG29");
   if( ssisll( i0x8000) != -32768) puts(" NG29*");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax=32767;
   const unsigned long long int u0x8000 =  0x8000;

   if( ssiull(   u0   ) !=   0  ) puts(" NG30");
   if( ssiull(   u1   ) !=   1  ) puts(" NG31");
   if( ssiull(  umax  ) !=  32767 ) puts(" NG32");
   if( ssiull( u0x8000) != -32768 ) puts(" NG32*");

}

   if( ssifla(-32768.  ) != -32768 ) puts(" NG33");
   if( ssifla(   -1.   ) !=  -1    ) puts(" NG34");
   if( ssifla(    0.   ) !=   0    ) puts(" NG35");
   if( ssifla(    1.   ) !=   1    ) puts(" NG36");
   if( ssifla( 32767.  ) !=  32767 ) puts(" NG37");

   if( ssidub(-32768.  ) != -32768 ) puts(" NG38");
   if( ssidub(   -1.   ) !=  -1    ) puts(" NG39");
   if( ssidub(    0.   ) !=   0    ) puts(" NG40");
   if( ssidub(    1.   ) !=   1    ) puts(" NG41");
   if( ssidub( 32767.  ) !=  32767 ) puts(" NG42");

   if( ssilgd(-32768.0L) != -32768 ) puts(" NG43");
   if( ssilgd(   -1.0L ) !=  -1    ) puts(" NG44");
   if( ssilgd(    0.0L ) !=   0    ) puts(" NG45");
   if( ssilgd(    1.0L ) !=   1    ) puts(" NG46");
   if( ssilgd( 32767.0L) !=  32767 ) puts(" NG47");

   puts(" PASS ");
}
