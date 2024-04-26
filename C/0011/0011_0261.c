#include  <stdio.h>

 float flasic(signed char i)
 {
 float                   k;  k=i; return k;
 }

 float flaunc(unsigned char i)
 {
 float                   k;  k=i; return k;
 }

 float flassi(signed short int i)
 {
 float                   k;  k=i; return k;
 }

 float flausi(unsigned short int i)
 {
 float                   k;  k=i; return k;
 }

 float flasli(signed long int i)
 {
 float                   k;  k=i; return k;
 }

 float flauli(unsigned long int i)
 {
 float                   k;  k=i; return k;
 }

 float flasll(signed long long int i)
 {
 float                   k;  k=i; return k;
 }

 float flaull(unsigned long long int i)
 {
 float                   k;  k=i; return k;
 }

 float flafla(float i)
 {
 float                   k;  k=i; return k;
 }

 float fladub(double i)
 {
 float                   k;  k=i; return k;
 }

 float flalgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
 )
 {
 float                   k;  k=i; return k;
 }

int main()
 {
   float flasic(signed char i);
   float flaunc(unsigned char i);
   float flassi(signed short int i);
   float flausi(unsigned short int i);
   float flasli(signed long int i);
   float flauli(unsigned long int i);
   float flasll(signed long long int i);
   float flaull(unsigned long long int i);
   float flafla(float i);
   float fladub(double i);
   float flalgd(
#ifdef NO_LONG_DOUBLE
 double i
#else
 long double i
#endif
   );

   puts(" NG with * -> ANSI ");
   if( flasic(  -128  ) != -128. ) puts(" NG1 ");
   if( flasic(   -1   ) !=  -1.  ) puts(" NG2 ");
   if( flasic(    0   ) !=   0.  ) puts(" NG3 ");
   if( flasic(    1   ) !=   1.  ) puts(" NG4 ");
   if( flasic(   127  ) !=  127. ) puts(" NG5 ");

   if( flaunc(    0   ) !=   0.  ) puts(" NG6 ");
   if( flaunc(    1   ) !=   1.  ) puts(" NG7 ");
   if( flaunc(   127  ) !=  127. ) puts(" NG8 ");
   if( flaunc(  0x80  ) !=  128. ) puts(" NG8 ");

   if( flassi(  -32768 ) != -32768. ) puts(" NG9 ");
   if( flassi(   -1    ) !=   -1.   ) puts(" NG10");
   if( flassi(    0    ) !=    0.   ) puts(" NG11");
   if( flassi(    1    ) !=    1.   ) puts(" NG12");
   if( flassi(   32767 ) !=  32767. ) puts(" NG13");
   if( flassi(  0x8000 ) != -32768. ) puts(" NG13*");

   if( flausi(    0    ) !=   0.    ) puts(" NG14");
   if( flausi(    1    ) !=   1.    ) puts(" NG15");
   if( flausi(   32767 ) !=  32767. ) puts(" NG16");
   if( flausi(  0x8000 ) !=  32768. ) puts(" NG16 ");

   if( flasli(  -2147483648 ) != -2147483648. ) puts(" NG17");
   if( flasli(   -1L   ) !=   -1.   ) puts(" NG18");
   if( flasli(    0    ) !=    0.   ) puts(" NG19");
   if( flasli(    1    ) !=    1.   ) puts(" NG20");
   if( flasli( 1000000 ) != 1000000.) puts(" NG21");

   if( flauli(    0     ) !=     0.  ) puts(" NG22");
   if( flauli(    1     ) !=     1.  ) puts(" NG23");
   if( flauli(  1000000 ) != 1000000.) puts(" NG24");

{
   const signed long long int i_min = -1000000;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  1000000;

   if( flasll( i_min  ) != -1000000 ) puts(" NG25");
   if( flasll(  i_1   ) !=   -1  ) puts(" NG26");
   if( flasll(   i0   ) !=   0   ) puts(" NG27");
   if( flasll(   i1   ) !=   1   ) puts(" NG28");
   if( flasll( i_max  ) != 1000000 ) puts(" NG29");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax =  1000000;

   if( flaull(   u0   ) !=   0  ) puts(" NG30");
   if( flaull(   u1   ) !=   1  ) puts(" NG31");
   if( flaull(  umax  ) != 1000000 ) puts(" NG32");

}

   if( flafla( -100.   ) != -100.0   ) puts(" NG33");
   if( flafla(   -1.   ) !=  -1.0    ) puts(" NG34");
   if( flafla(    0.   ) !=   0.0    ) puts(" NG35");
   if( flafla(    1.   ) !=   1.0    ) puts(" NG36");
   if( flafla(  100.   ) != 100.0    ) puts(" NG37");

   if( fladub(  -100000.  ) != -100000.0   ) puts(" NG38");
   if( fladub(   -1.   ) !=  -1.0    ) puts(" NG39");
   if( fladub(    0.   ) !=   0.0    ) puts(" NG40");
   if( fladub(    1.   ) !=   1.0    ) puts(" NG41");
   if( fladub(   100000.  ) !=  100000.0   ) puts(" NG42");

   if( flalgd( -100000000.0L ) != -100000000.0 ) puts(" NG43");
   if( flalgd(   -1.0L ) !=  -1.0    ) puts(" NG44");
   if( flalgd(    0.0L ) !=   0.0    ) puts(" NG45");
   if( flalgd(    1.0L ) !=   1.0    ) puts(" NG46");
   if( flalgd(  100000000.0L ) !=  100000000.0  ) puts(" NG47");

   puts(" PASS ");
}
