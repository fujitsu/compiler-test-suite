#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
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
   long double               ldsub1(),ldsub2(),ldsub3(),ldsub4(),
                             ldsub5(),ldsub6(),ldsub7(),ldsub8(),
                             ldsub9(),ldsub10(),ld=0.0;

   sch = 1;
   ld = ldsub1(ld,sch);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 01 * N    G  VAL = %x ****\n",ld);

   sh  = 1;
   ld = ldsub2(ld,sh);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 02 * N    G  VAL = %x ****\n",ld);

   li = 1;
   ld = ldsub3(ld,li);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 03 * N    G  VAL = %x ****\n",ld);

   lli = 1;
   ld = ldsub4(ld,lli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 04 * N    G  VAL = %x ****\n",ld);

   uch = 1;
   ld = ldsub5(ld,uch);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 05 * N    G  VAL = %x ****\n",ld);

   ush = 1;
   ld = ldsub6(ld,ush);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 06 * N    G  VAL = %x ****\n",ld);

   uli = 1;
   ld = ldsub7(ld,uli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 07 * N    G  VAL = %x ****\n",ld);

   ulli = 1;
   ld = ldsub8(ld,ulli);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 08 * N    G  VAL = %ld ****\n",ld);

   f = 1.0;
   ld = ldsub9(ld,f);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 09 * N    G  VAL = %x ****\n",ld);

   d = 1.0l;
   ld = ldsub10(ld,d);
   if(ld == 1.0)
      printf("**** SCOCVA11 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA11 - 10 * N    G  VAL = %x ****\n",ld);
exit (0);
}

long double ldsub1(ld,sch)
  long double ld;
  signed char  sch;
{
    ld = sch;
    return ld;
}

long double ldsub2(ld,sh)
  long double ld;
  short sh;
{
    ld = sh;
    return ld;
}

long double ldsub3(ld,li)
  long double ld;
  long int     li;
{
    ld = li;
    return ld;
}

long double ldsub4(ld,lli)
  long double ld;
  long long int     lli;
{
    ld = lli;
    return ld;
}

long double ldsub5(ld,uch)
  long double ld;
  unsigned char   uch;
{
    ld = uch;
    return ld;
}

long double ldsub6(ld,ush)
  long double ld;
  unsigned short       ush;
{
    ld = ush;
    return ld;
}

long double ldsub7(ld,uli)
  long double             ld;
  unsigned long int      uli;
{
    ld = uli;
    return ld;
}

long double ldsub8(ld,ulli)
  long double             ld;
  unsigned long long int ulli;
{
    ld = ulli;
    return ld;
}

long double ldsub9(ld,f)
  long double    ld;
  float          f;
{
    ld = f;
    return ld;
}

long double ldsub10(ld,d)
  long double    ld;
  double         d;
{
    ld = d;
    return ld;
}
