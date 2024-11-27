#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed char               sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ushsub1(),ushsub2(),ushsub3(),ushsub4(),
                             ushsub5(),ushsub6(),ushsub7(),ushsub8(),
                             ushsub9(),ushsub10(),ush=0;
   long int                  li;
   unsigned long int         uli;
   long int             lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch = 0xff;
   ush = ushsub1(ush,sch);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 01 * N    G  VAL = %x ****\n",ush);

   sh  = 0xffff;
   ush = ushsub2(ush,sh);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 02 * N    G  VAL = %x ****\n",ush);

   li = 0xffffffff;
   ush = ushsub3(ush,li);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 03 * N    G  VAL = %x ****\n",ush);

   lli = 0xffffffffffffffffLL;
   ush = ushsub4(ush,lli);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 04 * N    G  VAL = %x ****\n",ush);

   uch = 0xff;
   ush = ushsub5(ush,uch);
   if(ush == 0xff)
      printf("**** SCOCVA6 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 05 * N    G  VAL = %x ****\n",ush);

   uli = 0xffffffff;
   ush = ushsub6(ush,uli);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 06 * N    G  VAL = %x ****\n",ush);

   ulli = 0xffffffffffffffffLL;
   ush = ushsub7(ush,ulli);
   if(ush == 0xffff)
      printf("**** SCOCVA6 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 07 * N    G  VAL = %x ****\n",ush);

   f = 1.0;
   ush = ushsub8(ush,f);
   if(ush == 1)
      printf("**** SCOCVA6 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 08 * N    G  VAL = %d ****\n",ush);

   d = 1.0;
   ush = ushsub9(ush,d);
   if(ush == 1 )
      printf("**** SCOCVA6 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 09 * N    G  VAL = %d ****\n",ush);

   ld = 1.0;
   ush = ushsub10(ush,ld);
   if(ush == 1)
      printf("**** SCOCVA6 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA6 - 10 * N    G  VAL = %d ****\n",ush);
exit (0);
}

unsigned short ushsub1(ush,sch)
  unsigned short ush;
  signed char   sch;
{
    ush = sch;
    return ush;
}

unsigned short ushsub2(ush,sh)
  unsigned short ush;
  short sh;
{
    ush = sh;
    return ush;
}

unsigned short ushsub3(ush,li)
  unsigned short ush;
  long int     li;
{
    ush = li;
    return ush;
}

unsigned short ushsub4(ush,lli)
  unsigned short    ush;
  long int     lli;
{
    ush = lli;
    return ush;
}

unsigned short ushsub5(ush,uch)
  unsigned short   ush;
  unsigned char    uch;
{
    ush = uch;
    return ush;
}

unsigned short ushsub6(ush,uli)
  unsigned short        ush;
  unsigned long int     uli;
{
    ush = uli;
    return ush;
}

unsigned short ushsub7(ush,ulli)
  unsigned short          ush;
  unsigned long int  ulli;
{
    ush = ulli;
    return ush;
}

unsigned short ushsub8(ush,f)
  unsigned short          ush;
  float                   f;
{
    ush = f;
    return ush;
}

unsigned short ushsub9(ush,d)
  unsigned short          ush;
  double                  d;
{
    ush = d;
    return ush;
}

unsigned short ushsub10(ush,ld)
  unsigned short          ush;
  long double             ld;
{
    ush = ld;
    return ush;
}
