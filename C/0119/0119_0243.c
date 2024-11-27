#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   signed   char             sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             llisub1(),llisub2(),llisub3(),llisub4(),
                             llisub5(),llisub6(),llisub7(),llisub8(),
                             lli=0;
   unsigned long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch  = -1;
   lli = llisub1(lli,sch);
   if(lli == -1)
      printf("**** SCOCVA4 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 01 * N    G  VAL = %d ****\n",lli);

   sh = 0xffff;
   lli = llisub2(lli,sh);
   if(lli == -1)
      printf("**** SCOCVA4 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 02 * N    G  VAL = %d ****\n",lli);

   lli = 0xffffffffffffffffLL;
   lli = llisub3(lli,lli);
   if(lli == -1)
      printf("**** SCOCVA4 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 03 * N    G  VAL = %d ****\n",lli);

   uch = 255;
   lli = llisub4(lli,uch);
   if(lli == 255)
      printf("**** SCOCVA4 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 04 * N    G  VAL = %d ****\n",lli);

   ush = 0xffff;
   lli = llisub5(lli,ush);
   if(lli == 0xffff)
      printf("**** SCOCVA4 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 05 * N    G  VAL = %x ****\n",lli);

   uli = 0xffffffff;
   lli = llisub6(lli,uli);
   if(lli == 0xffffffff)
      printf("**** SCOCVA4 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 06 * N    G  VAL = %d ****\n",lli);

   ulli = 0xffffffffffffffffLL;
   lli = llisub7(lli,ulli);
   if(lli == -1)
      printf("**** SCOCVA4 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 07 * N    G  VAL = %d ****\n",lli);

   ld = -1.0;
   lli = llisub8(lli,ld);
   if(lli == -1)
      printf("**** SCOCVA4 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA4 - 08 * N    G  VAL = %d ****\n",lli);
exit (0);
}

long int llisub1(lli,sch)
  long int  lli;
  signed char    sch;
{
    lli = sch;
    return lli;
}

long int llisub2(lli,sh)
  long int lli;
  short         sh;
{
    lli = sh;
    return lli;
}

long int llisub3(lli,li)
  long int     lli;
  long int          li;
{
    lli = li;
    return lli;
}

long int llisub4(lli,uch)
  long int lli;
  unsigned char uch;
{
    lli = uch;
    return lli;
}

long int llisub5(lli,ush)
  long int     lli;
  unsigned short    ush;
{
    lli = ush;
    return lli;
}

long int llisub6(lli,uli)
  long int         lli;
  unsigned long int     uli;
{
    lli = uli;
    return lli;
}

long int llisub7(lli,ulli)
  long int           lli;
  unsigned long int  ulli;
{
    lli = ulli;
    return lli;
}

long int llisub8(lli,ld)
  long int           lli;
  long double             ld;
{
    lli = ld;
    return lli;
}
