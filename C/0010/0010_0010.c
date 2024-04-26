#include <stdio.h>

short shsub1(short sh, signed char sch);
short shsub2(short sh, long int li);
short shsub3(short sh, long long int lli);
short shsub4(short sh, unsigned char uch);
short shsub5(short sh, unsigned short ush);
short shsub6(short sh, unsigned long int uli);
short shsub7(short sh, unsigned long long int ulli);
short shsub8(short sh, float f);
short shsub9(short sh, double d);
short shsub10(short sh, long double ld);

int main()
{
   signed   char             sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long long int             lli;
   unsigned long long int    ulli;
   float                     f;
   double                    d;
   long double               ld;

   sch  = -1;
   sh = shsub1(sh,sch);
   if(sh == -1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %d ****\n",sh);

   li = 0xffffffff;
   sh = shsub2(sh,li);
   if(sh == -1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %d ****\n",sh);

   lli = 0xffffffffffffffffL;
   sh = shsub3(sh,lli);
   if(sh == -1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %d ****\n",sh);

   uch = 255;
   sh = shsub4(sh,uch);
   if(sh == 255)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %d ****\n",sh);

   ush = 0xffff;
   sh = shsub5(sh,ush);
   if(sh == -1)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %d ****\n",sh);

   uli = 0xffffffff;
   sh = shsub6(sh,uli);
   if(sh == -1)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %d ****\n",sh);

   ulli = 0xffffffffffffffffL;
   sh = shsub7(sh,ulli);
   if(sh == -1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %d ****\n",sh);

   f = -1.0;
   sh = shsub8(sh,f);
   if(sh == -1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %d ****\n",sh);

   d = -1.0;
   sh = shsub9(sh,d);
   if(sh == -1)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %d ****\n",sh);

   ld = -1.0;
   sh = shsub10(sh,ld);
   if(sh == -1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %d ****\n",sh);
}

short shsub1(short sh, signed char sch)
{
    sh = sch;
    return sh;
}

short shsub2(short sh, long int li)
{
    sh = li;
    return sh;
}

short shsub3(short sh, long long int lli)
{
    sh = lli;
    return sh;
}

short shsub4(short sh, unsigned char uch)
{
    sh = uch;
    return sh;
}

short shsub5(short sh, unsigned short ush)
{
    sh = ush;
    return sh;
}

short shsub6(short sh, unsigned long int uli)
{
    sh = uli;
    return sh;
}

short shsub7(short sh, unsigned long long int ulli)
{
    sh = ulli;
    return sh;
}

short shsub8(short sh, float f)
{
    sh = f;
    return sh;
}

short shsub9(short sh, double d)
{
    sh = d;
    return sh;
}

short shsub10(short sh, long double ld)
{
    sh = ld;
    return sh;
}
