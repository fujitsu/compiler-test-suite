#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed char               sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long long int             lli;
   unsigned long long int    ulli;
   float                     f;
   double                    dsub1(),dsub2(),dsub3(),dsub4(),
                             dsub5(),dsub6(),dsub7(),dsub8(),
                             dsub9(),dsub10(),d=0.0;
   long double               ld;

   sch = 1;
   d = dsub1(d,sch);
   if(d == 1.0)
      printf("**** SCOCVA10 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 01 * N    G  VAL = %x ****\n",d);

   sh  = 1;
   d = dsub2(d,sh);
   if(d == 1.0)
      printf("**** SCOCVA10 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 02 * N    G  VAL = %x ****\n",d);

   li = 1;
   d = dsub3(d,li);
   if(d == 1.0)
      printf("**** SCOCVA10 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 03 * N    G  VAL = %x ****\n",d);

   lli = 1;
   d = dsub4(d,lli);
   if(d == 1.0)
      printf("**** SCOCVA10 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 04 * N    G  VAL = %x ****\n",d);

   uch = 1;
   d = dsub5(d,uch);
   if(d == 1.0)
      printf("**** SCOCVA10 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 05 * N    G  VAL = %x ****\n",d);

   ush = 1;
   d = dsub6(d,ush);
   if(d == 1.0)
      printf("**** SCOCVA10 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 06 * N    G  VAL = %x ****\n",d);

   uli = 1;
   d = dsub7(d,uli);
   if(d == 1.0)
      printf("**** SCOCVA10 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 07 * N    G  VAL = %x ****\n",d);

   ulli = 1;
   d = dsub8(d,ulli);
   if(d == 1.0)
      printf("**** SCOCVA10 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 08 * N    G  VAL = %d ****\n",d);

   f = 1.0;
   d = dsub9(d,f);
   if(d == 1.0)
      printf("**** SCOCVA10 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 09 * N    G  VAL = %x ****\n",d);

   ld = 1.0l;
   d = dsub10(d,ld);
   if(d == 1.0)
      printf("**** SCOCVA10 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA10 - 10 * N    G  VAL = %x ****\n",d);
exit (0);
}

double dsub1(d,sch)
  double d;
  signed char   sch;
{
    d = sch;
    return d;
}

double dsub2(d,sh)
  double d;
  short sh;
{
    d = sh;
    return d;
}

double dsub3(d,li)
  double d;
  long int     li;
{
    d = li;
    return d;
}

double dsub4(d,lli)
  double d;
  long long int     lli;
{
    d = lli;
    return d;
}

double dsub5(d,uch)
  double d;
  unsigned char    uch;
{
    d = uch;
    return d;
}

double dsub6(d,ush)
  double d;
  unsigned short        ush;
{
    d = ush;
    return d;
}

double dsub7(d,uli)
  double                  d;
  unsigned long int       uli;
{
    d = uli;
    return d;
}

double dsub8(d,ulli)
  double                  d;
  unsigned long long int  ulli;
{
    d = ulli;
    return d;
}

double dsub9(d,f)
  double         d;
  float          f;
{
    d = f;
    return d;
}

double dsub10(d,ld)
  double         d;
  long double    ld;
{
    d = ld;
    return d;
}
