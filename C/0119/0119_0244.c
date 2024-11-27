#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed char               sch;
   unsigned char             uchsub1(),uchsub2(),uchsub3(),uchsub4(),
                             uchsub5(),uchsub6(),uchsub7(),uchsub8(),
                             uchsub9(),uchsub10(),uch=0;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch = 0xff;
   uch = uchsub1(uch,sch);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 01 * N    G  VAL = %x ****\n",uch);

   sh  = 0xffff;
   uch = uchsub2(uch,sh);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 02 * N    G  VAL = %x ****\n",uch);

   li = 0xffffffff;
   uch = uchsub3(uch,li);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 03 * N    G  VAL = %x ****\n",uch);

   lli = 0xffffffffffffffffLL;
   uch = uchsub4(uch,lli);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 04 * N    G  VAL = %x ****\n",uch);

   ush = 0xffff;
   uch = uchsub5(uch,ush);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 05 * N    G  VAL = %x ****\n",uch);

   uli = 0xffffffff;
   uch = uchsub6(uch,uli);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 06 * N    G  VAL = %x ****\n",uch);

   ulli = 0xffffffffffffffffLL;
   uch = uchsub7(uch,ulli);
   if(uch == 0xff)
      printf("**** SCOCVA5 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 07 * N    G  VAL = %x ****\n",uch);

   f = 1.0;
   uch = uchsub8(uch,f);
   if(uch == 1)
      printf("**** SCOCVA5 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 08 * N    G  VAL = %d ****\n",uch);

   d = 1.0;
   uch = uchsub9(uch,d);
   if(uch == 1 )
      printf("**** SCOCVA5 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 09 * N    G  VAL = %d ****\n",uch);

   ld = 1.0;
   uch = uchsub10(uch,ld);
   if(uch == 1)
      printf("**** SCOCVA5 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA5 - 10 * N    G  VAL = %d ****\n",uch);
exit (0);
}

unsigned char uchsub1(uch,sch)
  unsigned char uch;
  signed char   sch;
{
    uch = sch;
    return uch;
}

unsigned char uchsub2(uch,sh)
  unsigned char uch;
  short sh;
{
    uch = sh;
    return uch;
}

unsigned char uchsub3(uch,li)
  unsigned char uch;
  long int     li;
{
    uch = li;
    return uch;
}

unsigned char uchsub4(uch,lli)
  unsigned char     uch;
  long int     lli;
{
    uch = lli;
    return uch;
}

unsigned char uchsub5(uch,ush)
  unsigned char    uch;
  unsigned short   ush;
{
    uch = ush;
    return uch;
}

unsigned char uchsub6(uch,uli)
  unsigned char         uch;
  unsigned long int     uli;
{
    uch = uli;
    return uch;
}

unsigned char uchsub7(uch,ulli)
  unsigned char           uch;
  unsigned long int  ulli;
{
    uch = ulli;
    return uch;
}

unsigned char uchsub8(uch,f)
  unsigned char           uch;
  float                   f;
{
    uch = f;
    return uch;
}

unsigned char uchsub9(uch,d)
  unsigned char           uch;
  double                  d;
{
    uch = d;
    return uch;
}

unsigned char uchsub10(uch,ld)
  unsigned char           uch;
  long double             ld;
{
    uch = ld;
    return uch;
}
