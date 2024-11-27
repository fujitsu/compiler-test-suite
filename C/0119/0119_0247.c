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
   unsigned long long int    ullisub1(),ullisub2(),ullisub3(),
                             ullisub4(),ullisub5(),ullisub6(),
                             ullisub7(),ullisub8(),ulli=0;
   float                     f;
   double                    d;
   long double               ld;

   sch = 1;
   ulli = ullisub1(ulli,sch);
   if(ulli == 1)
      printf("**** SCOCVA8 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 01 * N    G  VAL = %x ****\n",ulli);

   sh  = 1;
   ulli = ullisub2(ulli,sh);
   if(ulli == 1)
      printf("**** SCOCVA8 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 02 * N    G  VAL = %x ****\n",ulli);

   li = 1;
   ulli = ullisub3(ulli,li);
   if(ulli == 1)
      printf("**** SCOCVA8 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 03 * N    G  VAL = %x ****\n",ulli);

   lli = 1;
   ulli = ullisub4(ulli,lli);
   if(ulli == 1)
      printf("**** SCOCVA8 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 04 * N    G  VAL = %x ****\n",ulli);

   uch = 1;
   ulli = ullisub5(ulli,uch);
   if(ulli == 1)
      printf("**** SCOCVA8 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 05 * N    G  VAL = %x ****\n",ulli);

   ush = 1;
   ulli = ullisub6(ulli,ush);
   if(ulli == 1)
      printf("**** SCOCVA8 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 06 * N    G  VAL = %x ****\n",ulli);

   uli = 1;
   ulli = ullisub7(ulli,uli);
   if(ulli == 1)
      printf("**** SCOCVA8 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 07 * N    G  VAL = %x ****\n",ulli);

   ld = 1.0;
   ulli = ullisub8(ulli,ld);
   if(ulli == 1)
      printf("**** SCOCVA8 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA8 - 08 * N    G  VAL = %d ****\n",ulli);
exit (0);
}

unsigned long long int ullisub1(ulli,sch)
  unsigned long long int ulli;
  signed char   sch;
{
    ulli = sch;
    return ulli;
}

unsigned long long int ullisub2(ulli,sh)
  unsigned long long int ulli;
  short sh;
{
    ulli = sh;
    return ulli;
}

unsigned long long int ullisub3(ulli,li)
  unsigned long long int ulli;
  long int     li;
{
    ulli = li;
    return ulli;
}

unsigned long long int ullisub4(ulli,lli)
  unsigned long long int ulli;
  long long int     lli;
{
    ulli = lli;
    return ulli;
}

unsigned long long int ullisub5(ulli,uch)
  unsigned long long int ulli;
  unsigned char    uch;
{
    ulli = uch;
    return ulli;
}

unsigned long long int ullisub6(ulli,ush)
  unsigned long long int ulli;
  unsigned short        ush;
{
    ulli = ush;
    return ulli;
}

unsigned long long int ullisub7(ulli,uli)
  unsigned long long int  ulli;
  unsigned long int       uli;
{
    ulli = uli;
    return ulli;
}

unsigned long long int ullisub8(ulli,ld)
  unsigned long long int  ulli;
  long double             ld;
{
    ulli = ld;
    return ulli;
}
