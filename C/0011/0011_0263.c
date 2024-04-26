#include  <stdio.h>

 long double                  lgdsic( signed char i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdunc( unsigned char i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdssi( signed short int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdusi( unsigned short int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdsli( signed long int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgduli( unsigned long int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdsll( signed long long int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdull( unsigned long long int i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdfla( float i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgddub( double i )
 {
 long double                 k;  k=i; return k;
 }
 long double                  lgdlgd( long double i )
 {
 long double                 k;  k=i; return k;
 }
int main()
 {
   puts(" NG with * -> ANSI ");
   if( lgdsic(  -128  ) != -128. ) puts(" NG1 ");
   if( lgdsic(   -1   ) !=  -1.  ) puts(" NG2 ");
   if( lgdsic(    0   ) !=   0.  ) puts(" NG3 ");
   if( lgdsic(    1   ) !=   1.  ) puts(" NG4 ");
   if( lgdsic(   127  ) !=  127. ) puts(" NG5 ");

   if( lgdunc(    0   ) !=   0.  ) puts(" NG6 ");
   if( lgdunc(    1   ) !=   1.  ) puts(" NG7 ");
   if( lgdunc(   127  ) !=  127. ) puts(" NG8 ");
   if( lgdunc(  0x80  ) !=  128. ) puts(" NG8 ");

   if( lgdssi(  -32768 ) != -32768. ) puts(" NG9 ");
   if( lgdssi(   -1    ) !=   -1.   ) puts(" NG10");
   if( lgdssi(    0    ) !=    0.   ) puts(" NG11");
   if( lgdssi(    1    ) !=    1.   ) puts(" NG12");
   if( lgdssi(   32767 ) !=  32767. ) puts(" NG13");
   if( lgdssi(  0x8000 ) != -32768. ) puts(" NG13*");

   if( lgdusi(    0    ) !=   0.    ) puts(" NG14");
   if( lgdusi(    1    ) !=   1.    ) puts(" NG15");
   if( lgdusi(   32767 ) !=  32767. ) puts(" NG16");
   if( lgdusi(  0x8000 ) !=  32768. ) puts(" NG16");

   if( lgdsli(  -2147483648 ) != -2147483648. ) puts(" NG17");
   if( lgdsli(   -1L   ) !=   -1.   ) puts(" NG18");
   if( lgdsli(    0    ) !=    0.   ) puts(" NG19");
   if( lgdsli(    1    ) !=    1.   ) puts(" NG20");
   if( lgdsli( 1000000 ) != 1000000.) puts(" NG21");

   if( lgduli(    0     ) !=     0.  ) puts(" NG22");
   if( lgduli(    1     ) !=     1.  ) puts(" NG23");
   if( lgduli(  1000000 ) != 1000000.) puts(" NG24");

{
   const signed long long int i_min = -1000000;
   const signed long long int i_1   = -1;
   const signed long long int i0    =  0;
   const signed long long int i1    =  1;
   const signed long long int i_max =  1000000;

   if( lgdsll( i_min  ) != -1000000 ) puts(" NG25");
   if( lgdsll(  i_1   ) !=   -1  ) puts(" NG26");
   if( lgdsll(   i0   ) !=   0   ) puts(" NG27");
   if( lgdsll(   i1   ) !=   1   ) puts(" NG28");
   if( lgdsll( i_max  ) != 1000000 ) puts(" NG29");

}
{
   const unsigned long long int u0=0;
   const unsigned long long int u1=1;
   const unsigned long long int umax =  1000000;

   if( lgdull(   u0   ) !=   0  ) puts(" NG30");
   if( lgdull(   u1   ) !=   1  ) puts(" NG31");
   if( lgdull(  umax  ) != 1000000 ) puts(" NG32");

}

   if( lgdfla( -100.   ) != -100.0   ) puts(" NG33");
   if( lgdfla(   -1.   ) !=  -1.0    ) puts(" NG34");
   if( lgdfla(    0.   ) !=   0.0    ) puts(" NG35");
   if( lgdfla(    1.   ) !=   1.0    ) puts(" NG36");
   if( lgdfla(  100.   ) != 100.0    ) puts(" NG37");

   if( lgddub(  -100000.  ) != -100000.0   ) puts(" NG38");
   if( lgddub(   -1.   ) !=  -1.0    ) puts(" NG39");
   if( lgddub(    0.   ) !=   0.0    ) puts(" NG40");
   if( lgddub(    1.   ) !=   1.0    ) puts(" NG41");
   if( lgddub(   100000.  ) !=  100000.0   ) puts(" NG42");

   if( lgdlgd( -100000000.0L ) != -100000000.0 ) puts(" NG43");
   if( lgdlgd(   -1.0L ) !=  -1.0    ) puts(" NG44");
   if( lgdlgd(    0.0L ) !=   0.0    ) puts(" NG45");
   if( lgdlgd(    1.0L ) !=   1.0    ) puts(" NG46");
   if( lgdlgd(  100000000.0L ) !=  100000000.0  ) puts(" NG47");

   puts(" PASS ");
}
