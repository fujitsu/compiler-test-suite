#include <stdio.h>

unsigned short ushsub1(unsigned short ush, signed char sch);
unsigned short ushsub2(unsigned short ush, short sh);
unsigned short ushsub3(unsigned short ush, long int li);
unsigned short ushsub4(unsigned short ush, long long int lli);
unsigned short ushsub5(unsigned short ush, unsigned char uch);
unsigned short ushsub6(unsigned short ush, unsigned long int uli);
unsigned short ushsub7(unsigned short ush, unsigned long long int ulli);
unsigned short ushsub8(unsigned short ush, float f);
unsigned short ushsub9(unsigned short ush, double d);
unsigned short ushsub10(unsigned short ush, long double ld);

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
   double                    d;
   long double               ld;

   sch = 0xff;
   ush = ushsub1(ush,sch);
   if(ush == 0xffff)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %x ****\n",ush);

   sh  = 0xffff;
   ush = ushsub2(ush,sh);
   if(ush == 0xffff)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %x ****\n",ush);

   li = 0xffffffff;
   ush = ushsub3(ush,li);
   if(ush == 0xffff)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %x ****\n",ush);

   lli = 0xffffffffffffffffL;
   ush = ushsub4(ush,lli);
   if(ush == 0xffff)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %x ****\n",ush);

   uch = 0xff;
   ush = ushsub5(ush,uch);
   if(ush == 0xff)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %x ****\n",ush);

   uli = 0xffffffff;
   ush = ushsub6(ush,uli);
   if(ush == 0xffff)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %x ****\n",ush);

   ulli = 0xffffffffffffffffL;
   ush = ushsub7(ush,ulli);
   if(ush == 0xffff)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %x ****\n",ush);

   f = 1.0;
   ush = ushsub8(ush,f);
   if(ush == 1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %d ****\n",ush);

   d = 1.0;
   ush = ushsub9(ush,d);
   if(ush == 1 )
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %d ****\n",ush);

   ld = 1.0;
   ush = ushsub10(ush,ld);
   if(ush == 1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %d ****\n",ush);
}

unsigned short ushsub1(unsigned short ush, signed char sch)
{
    ush = sch;
    return ush;
}

unsigned short ushsub2(unsigned short ush, short sh)
{
    ush = sh;
    return ush;
}

unsigned short ushsub3(unsigned short ush, long int li)
{
    ush = li;
    return ush;
}

unsigned short ushsub4(unsigned short ush, long long int lli)
{
    ush = lli;
    return ush;
}

unsigned short ushsub5(unsigned short ush, unsigned char uch)
{
    ush = uch;
    return ush;
}

unsigned short ushsub6(unsigned short ush, unsigned long int uli)
{
    ush = uli;
    return ush;
}

unsigned short ushsub7(unsigned short ush, unsigned long long int ulli)
{
    ush = ulli;
    return ush;
}

unsigned short ushsub8(unsigned short ush, float f)
{
    ush = f;
    return ush;
}

unsigned short ushsub9(unsigned short ush, double d)
{
    ush = d;
    return ush;
}

unsigned short ushsub10(unsigned short ush, long double ld)
{
    ush = ld;
    return ush;
}
