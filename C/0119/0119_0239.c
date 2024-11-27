#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed char               schsub1(),schsub2(),schsub3(),schsub4(),
                             schsub5(),schsub6(),schsub7(),schsub8(),
                             schsub9(),schsub10(),sch=0;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sh  = 0xffff;
   sch = schsub1(sch,sh);
   if(sch == -1)
      printf("**** SCOCVA1 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 01 * N    G  VAL = %d ****\n",sch);

   li = 0xffffffff;
   sch = schsub2(sch,li);
   if(sch == -1)
      printf("**** SCOCVA1 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 02 * N    G  VAL = %d ****\n",sch);

   lli = 0xffffffffffffffffLL;
   sch = schsub3(sch,lli);
   if(sch == -1)
      printf("**** SCOCVA1 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 03 * N    G  VAL = %d ****\n",sch);

   uch = 0xff;
   sch = schsub4(sch,uch);
   if(sch == -1)
      printf("**** SCOCVA1 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 04 * N    G  VAL = %d ****\n",sch);

   ush = 0xffff;
   sch = schsub5(sch,ush);
   if(sch == -1)
      printf("**** SCOCVA1 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 05 * N    G  VAL = %d ****\n",sch);

   uli = 0xffffffff;
   sch = schsub6(sch,uli);
   if(sch == -1)
      printf("**** SCOCVA1 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 06 * N    G  VAL = %d ****\n",sch);

   ulli = 0xffffffffffffffffLL;
   sch = schsub7(sch,ulli);
   if(sch == -1)
      printf("**** SCOCVA1 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 07 * N    G  VAL = %d ****\n",sch);

   f = -1.0;
   sch = schsub8(sch,f);
   if(sch == -1)
      printf("**** SCOCVA1 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 08 * N    G  VAL = %d ****\n",sch);

   d = -1.0;
   sch = schsub9(sch,d);
   if(sch == -1)
      printf("**** SCOCVA1 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 09 * N    G  VAL = %d ****\n",sch);

   ld = -1.0;
   sch = schsub10(sch,ld);
   if(sch == -1)
      printf("**** SCOCVA1 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA1 - 10 * N    G  VAL = %d ****\n",sch);
exit (0);
}

signed char schsub1(sch,sh)
  signed char  sch;
  short sh;
{
    sch = sh;
    return sch;
}

signed char schsub2(sch,li)
  signed char  sch;
  long int     li;
{
    sch = li;
    return sch;
}

signed char schsub3(sch,lli)
  signed char  sch;
  long int     lli;
{
    sch = lli;
    return sch;
}

signed char schsub4(sch,uch)
  signed char   sch;
  unsigned char uch;
{
    sch = uch;
    return sch;
}

signed char schsub5(sch,ush)
  signed char      sch;
  unsigned short   ush;
{
    sch = ush;
    return sch;
}

signed char schsub6(sch,uli)
  signed char           sch;
  unsigned long int     uli;
{
    sch = uli;
    return sch;
}

signed char schsub7(sch,ulli)
  signed char             sch;
  unsigned long int  ulli;
{
    sch = ulli;
    return sch;
}

signed char schsub8(sch,f)
  signed char             sch;
  float                   f;
{
    sch = f;
    return sch;
}

signed char schsub9(sch,d)
  signed char             sch;
  double                  d;
{
    sch = d;
    return sch;
}

signed char schsub10(sch,ld)
  signed char             sch;
  long double             ld;
{
    sch = ld;
    return sch;
}
