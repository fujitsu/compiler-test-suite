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
   unsigned long int         ulisub1(),ulisub2(),ulisub3(),ulisub4(),
                             ulisub5(),ulisub6(),ulisub7(),ulisub8(),
                             ulisub9(),ulisub10(),uli=0;
   long long int             lli;
   unsigned long long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch = 1;
   uli = ulisub1(uli,sch);
   if(uli == 1)
      printf("**** SCOCVA7 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 01 * N    G  VAL = %x ****\n",uli);

   sh  = 1;
   uli = ulisub2(uli,sh);
   if(uli == 1)
      printf("**** SCOCVA7 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 02 * N    G  VAL = %x ****\n",uli);

   li = 1;
   uli = ulisub3(uli,li);
   if(uli == 1)
      printf("**** SCOCVA7 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 03 * N    G  VAL = %x ****\n",uli);

   lli = 1;
   uli = ulisub4(uli,lli);
   if(uli == 1)
      printf("**** SCOCVA7 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 04 * N    G  VAL = %x ****\n",uli);

   uch = 1;
   uli = ulisub5(uli,uch);
   if(uli == 1)
      printf("**** SCOCVA7 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 05 * N    G  VAL = %x ****\n",uli);

   ush = 1;
   uli = ulisub6(uli,ush);
   if(uli == 1)
      printf("**** SCOCVA7 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 06 * N    G  VAL = %x ****\n",uli);

   ulli = 1;
   uli = ulisub7(uli,ulli);
   if(uli == 1)
      printf("**** SCOCVA7 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 07 * N    G  VAL = %x ****\n",uli);

   f = 1.0;
   uli = ulisub8(uli,f);
   if(uli == 1)
      printf("**** SCOCVA7 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 08 * N    G  VAL = %d ****\n",uli);

   d = 1.0;
   uli = ulisub9(uli,d);
   if(uli == 1 )
      printf("**** SCOCVA7 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 09 * N    G  VAL = %d ****\n",uli);

   ld = 1.0;
   uli = ulisub10(uli,ld);
   if(uli == 1)
      printf("**** SCOCVA7 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA7 - 10 * N    G  VAL = %d ****\n",uli);
exit (0);
}

unsigned long int ulisub1(uli,sch)
  unsigned long uli;
  signed char   sch;
{
    uli = sch;
    return uli;
}

unsigned long int ulisub2(uli,sh)
  unsigned long int uli;
  short sh;
{
    uli = sh;
    return uli;
}

unsigned long int ulisub3(uli,li)
  unsigned long int uli;
  long int     li;
{
    uli = li;
    return uli;
}

unsigned long int ulisub4(uli,lli)
  unsigned long int uli;
  long long int     lli;
{
    uli = lli;
    return uli;
}

unsigned long int ulisub5(uli,uch)
  unsigned long int uli;
  unsigned char    uch;
{
    uli = uch;
    return uli;
}

unsigned long int ulisub6(uli,ush)
  unsigned long int     uli;
  unsigned short        ush;
{
    uli = ush;
    return uli;
}
unsigned long int ulisub7(uli,ulli)
  unsigned long int       uli;
  unsigned long long int  ulli;
{
    uli = ulli;
    return uli;
}

unsigned long int ulisub8(uli,f)
  unsigned long int       uli;
  float                   f;
{
    uli = f;
    return uli;
}

unsigned long int ulisub9(uli,d)
  unsigned long int       uli;
  double                  d;
{
    uli = d;
    return uli;
}

unsigned long int ulisub10(uli,ld)
  unsigned long int       uli;
  long double             ld;
{
    uli = ld;
    return uli;
}
