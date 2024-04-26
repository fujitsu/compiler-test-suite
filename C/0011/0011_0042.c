#include  <stdio.h>

int main()
{
   signed char               sch;
   unsigned char             uchsub1(unsigned char uch, signed char sch),uchsub2(unsigned char uch, short sh),
                             uchsub3(unsigned char uch, long int li),uchsub4(unsigned char uch, long int lli),
                             uchsub5(unsigned char uch, unsigned short ush),uchsub6(unsigned char uch, unsigned long int uli),
                             uchsub7(unsigned char uch, unsigned long int ulli),uchsub8(unsigned char uch, float f),
                             uchsub9(unsigned char uch, double d),uchsub10(unsigned char uch, long double ld),uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
#ifdef NO_LONG_DOUBLE
   double               ld;
#else
   long double               ld;
#endif
   sch = 0xff;
   uch = uchsub1(uch,sch);
   if(uch == 0xff)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %x ****\n",uch);

   sh  = 0xffff;
   uch = uchsub2(uch,sh);
   if(uch == 0xff)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %x ****\n",uch);

   li = 0xffffffff;
   uch = uchsub3(uch,li);
   if(uch == 0xff)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %x ****\n",uch);

   lli = 0xffffffffffffffffL;
   uch = uchsub4(uch,lli);
   if(uch == 0xff)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %x ****\n",uch);

   ush = 0xffff;
   uch = uchsub5(uch,ush);
   if(uch == 0xff)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %x ****\n",uch);

   uli = 0xffffffff;
   uch = uchsub6(uch,uli);
   if(uch == 0xff)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %x ****\n",uch);

   ulli = 0xffffffffffffffffL;
   uch = uchsub7(uch,ulli);
   if(uch == 0xff)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %x ****\n",uch);

   f = 1.0;
   uch = uchsub8(uch,f);
   if(uch == 1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %d ****\n",uch);

   d = 1.0;
   uch = uchsub9(uch,d);
   if(uch == 1 )
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %d ****\n",uch);

   ld = 1.0;
   uch = uchsub10(uch,ld);
   if(uch == 1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %d ****\n",uch);
}

unsigned char uchsub1(unsigned char uch, signed char sch)
{
    uch = sch;
    return uch;
}

unsigned char uchsub2(unsigned char uch, short sh)
{
    uch = sh;
    return uch;
}

unsigned char uchsub3(unsigned char uch, long int li)
{
    uch = li;
    return uch;
}

unsigned char uchsub4(unsigned char uch, long int lli)
{
    uch = lli;
    return uch;
}

unsigned char uchsub5(unsigned char uch, unsigned short ush)
{
    uch = ush;
    return uch;
}

unsigned char uchsub6(unsigned char uch, unsigned long int uli)
{
    uch = uli;
    return uch;
}

unsigned char uchsub7(unsigned char uch, unsigned long int ulli)
{
    uch = ulli;
    return uch;
}

unsigned char uchsub8(unsigned char uch, float f)
{
    uch = f;
    return uch;
}

unsigned char uchsub9(unsigned char uch, double d)
{
    uch = d;
    return uch;
}

unsigned char uchsub10(unsigned char uch, long double ld)
{
    uch = ld;
    return uch;
}
