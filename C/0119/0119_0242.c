#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed   char             sch;
   unsigned char             uch;
   short                     shsub1(),shsub2(),shsub3(),shsub4(),
                             shsub5(),shsub6(),shsub7(),shsub8(),
                             shsub9(),shsub10(),sh=0;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch  = -1;
   sh = shsub1(sh,sch);
   if(sh == -1)
      printf("**** SCOCVA2 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 01 * N    G  VAL = %d ****\n",sh);

   li = 0xffffffff;
   sh = shsub2(sh,li);
   if(sh == -1)
      printf("**** SCOCVA2 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 02 * N    G  VAL = %d ****\n",sh);

   lli = 0xffffffffffffffffLL;
   sh = shsub3(sh,lli);
   if(sh == -1)
      printf("**** SCOCVA2 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 03 * N    G  VAL = %d ****\n",sh);

   uch = 255;
   sh = shsub4(sh,uch);
   if(sh == 255)
      printf("**** SCOCVA2 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 04 * N    G  VAL = %d ****\n",sh);

   ush = 0xffff;
   sh = shsub5(sh,ush);
   if(sh == -1)
      printf("**** SCOCVA2 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 05 * N    G  VAL = %d ****\n",sh);

   uli = 0xffffffff;
   sh = shsub6(sh,uli);
   if(sh == -1)
      printf("**** SCOCVA2 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 06 * N    G  VAL = %d ****\n",sh);

   ulli = 0xffffffffffffffffLL;
   sh = shsub7(sh,ulli);
   if(sh == -1)
      printf("**** SCOCVA2 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 07 * N    G  VAL = %d ****\n",sh);

   f = -1.0;
   sh = shsub8(sh,f);
   if(sh == -1)
      printf("**** SCOCVA2 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 08 * N    G  VAL = %d ****\n",sh);

   d = -1.0;
   sh = shsub9(sh,d);
   if(sh == -1)
      printf("**** SCOCVA2 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 09 * N    G  VAL = %d ****\n",sh);

   ld = -1.0;
   sh = shsub10(sh,ld);
   if(sh == -1)
      printf("**** SCOCVA2 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA2 - 10 * N    G  VAL = %d ****\n",sh);
exit (0);
}

short shsub1(sh,sch)
  short        sh;
  signed char  sch;
{
    sh = sch;
    return sh;
}

short shsub2(sh,li)
  short        sh;
  long int     li;
{
    sh = li;
    return sh;
}

short shsub3(sh,lli)
  short        sh;
  long int     lli;
{
    sh = lli;
    return sh;
}

short shsub4(sh,uch)
  short         sh;
  unsigned char uch;
{
    sh = uch;
    return sh;
}

short shsub5(sh,ush)
  short            sh;
  unsigned short   ush;
{
    sh = ush;
    return sh;
}

short shsub6(sh,uli)
  short                 sh;
  unsigned long int     uli;
{
    sh = uli;
    return sh;
}

short shsub7(sh,ulli)
  short                   sh;
  unsigned long int  ulli;
{
    sh = ulli;
    return sh;
}

short shsub8(sh,f)
  short                   sh;
  float                   f;
{
    sh = f;
    return sh;
}

short shsub9(sh,d)
  short                   sh;
  double                  d;
{
    sh = d;
    return sh;
}

short shsub10(sh,ld)
  short                   sh;
  long double             ld;
{
    sh = ld;
    return sh;
}
