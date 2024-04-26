#include <stdio.h>

long double ldsub1(long double ld, signed char sch);
long double ldsub2(long double ld, short sh);
long double ldsub3(long double ld, long int li);
long double ldsub4(long double ld, long long int lli);
long double ldsub5(long double ld, unsigned char uch);
long double ldsub6(long double ld, unsigned short ush);
long double ldsub7(long double ld, unsigned long int uli);
long double ldsub8(long double ld, unsigned long long int ulli);
long double ldsub9(long double ld, float f);
long double ldsub10(long double ld, double d);

int main()
{
   signed char              sch;
   unsigned char            uch;
   short                     sh;
   unsigned short           ush;
   long int                  li;
   unsigned long int        uli;
   long long int             lli;
   unsigned long long int   ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch = 1;
   ld = ldsub1(ld,sch);
   if(ld == 1.0)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %Lf ****\n",ld);

   sh  = 1;
   ld = ldsub2(ld,sh);
   if(ld == 1.0)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %Lf ****\n",ld);

   li = 1;
   ld = ldsub3(ld,li);
   if(ld == 1.0)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %Lf ****\n",ld);

   lli = 1;
   ld = ldsub4(ld,lli);
   if(ld == 1.0)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %Lf ****\n",ld);

   uch = 1;
   ld = ldsub5(ld,uch);
   if(ld == 1.0)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %Lf ****\n",ld);

   ush = 1;
   ld = ldsub6(ld,ush);
   if(ld == 1.0)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %Lf ****\n",ld);

   uli = 1;
   ld = ldsub7(ld,uli);
   if(ld == 1.0)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %Lf ****\n",ld);

   ulli = 1;
   ld = ldsub8(ld,ulli);
   if(ld == 1.0)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %Lf ****\n",ld);

   f = 1.0;
   ld = ldsub9(ld,f);
   if(ld == 1.0)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %Lf ****\n",ld);

   d = 1.0l;
   ld = ldsub10(ld,d);
   if(ld == 1.0)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %Lf ****\n",ld);
}

long double ldsub1(long double ld, signed char sch)
{
    ld = sch;
    return ld;
}

long double ldsub2(long double ld, short sh)
{
    ld = sh;
    return ld;
}

long double ldsub3(long double ld, long int li)
{
    ld = li;
    return ld;
}

long double ldsub4(long double ld, long long int lli)
{
    ld = lli;
    return ld;
}

long double ldsub5(long double ld, unsigned char uch)
{
    ld = uch;
    return ld;
}

long double ldsub6(long double ld, unsigned short ush)
{
    ld = ush;
    return ld;
}

long double ldsub7(long double ld, unsigned long int uli)
{
    ld = uli;
    return ld;
}

long double ldsub8(long double ld, unsigned long long int ulli)
{
    ld = ulli;
    return ld;
}

long double ldsub9(long double ld, float f)
{
    ld = f;
    return ld;
}

long double ldsub10(long double ld, double d)
{
    ld = d;
    return d;
}
