#include  <stdio.h>

int main()
{
   signed   char             sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         uli;
   long int             llisub1(long int lli, signed char sch),llisub2(long int lli, short sh),
                        llisub3(long int lli, long int li),llisub4(long int lli, unsigned char uch),
                        llisub5(long int lli, unsigned short ush),llisub6(long int lli, unsigned long int uli),
                        llisub7(long int lli, unsigned long int ulli),llisub8(long int lli, long double  ld),
                        lli;
   unsigned long int    ulli;
   float                     f;
   double                    d;
#ifdef NO_LONG_DOUBLE
   double               ld;
#else
   long double               ld;
#endif
   sch  = -1;
   lli = llisub1(lli,sch);
   if(lli == -1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %ld ****\n",lli);

   sh = 0xffff;
   lli = llisub2(lli,sh);
   if(lli == -1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %ld ****\n",lli);

   lli = 0xffffffffffffffffL;
   lli = llisub3(lli,lli);
   if(lli == -1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %ld ****\n",lli);

   uch = 255;
   lli = llisub4(lli,uch);
   if(lli == 255)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %ld ****\n",lli);

   ush = 0xffff;
   lli = llisub5(lli,ush);
   if(lli == 0xffff)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %lx ****\n",lli);

   uli = 0xffffffff;
   lli = llisub6(lli,uli);
   if(lli == 0xffffffff)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %ld ****\n",lli);

   ulli = 0xffffffffffffffffL;
   lli = llisub7(lli,ulli);
   if(lli == -1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %ld ****\n",lli);

   ld = -1.0;
   lli = llisub8(lli,ld);
   if(lli == -1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %ld ****\n",lli);
}

long int llisub1(long int lli, signed char sch)
{
    lli = sch;
    return lli;
}

long int llisub2(long int lli, short sh)
{
    lli = sh;
    return lli;
}

long int llisub3(long int lli, long int li)
{
    lli = li;
    return lli;
}

long int llisub4(long int lli, unsigned char uch)
{
    lli = uch;
    return lli;
}

long int llisub5(long int lli, unsigned short ush)
{
    lli = ush;
    return lli;
}

long int llisub6(long int lli, unsigned long int uli)
{
    lli = uli;
    return lli;
}

long int llisub7(long int lli, unsigned long int ulli)
{
    lli = ulli;
    return lli;
}

long int llisub8(long int lli, long double  ld)
{
    lli = ld;
    return lli;
}
