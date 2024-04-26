#include <stdio.h>

long long int llisub1(long long int lli, signed char sch);
long long int llisub2(long long int lli, short sh);
long long int llisub3(long long int lli, long int li);
long long int llisub4(long long int lli, unsigned char uch);
long long int llisub5(long long int lli, unsigned short ush);
long long int llisub6(long long int lli, unsigned long int uli);
long long int llisub7(long long int lli, unsigned long long int ulli);
long long int llisub8(long long int lli, long double ld);

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
   lli = llisub1(lli,sch);
   if(lli == -1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %lld ****\n",lli);

   sh = 0xffff;
   lli = llisub2(lli,sh);
   if(lli == -1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %lld ****\n",lli);

   lli = 0xffffffffffffffffL;
   lli = llisub3(lli,lli);
   if(lli == -1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %lld ****\n",lli);

   uch = 255;
   lli = llisub4(lli,uch);
   if(lli == 255)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %lld ****\n",lli);

   ush = 0xffff;
   lli = llisub5(lli,ush);
   if(lli == 0xffff)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %llx ****\n",lli);

   uli = 0xffffffff;
   lli = llisub6(lli,uli);
   if(lli == 0xffffffff)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %lld ****\n",lli);

   ulli = 0xffffffffffffffffL;
   lli = llisub7(lli,ulli);
   if(lli == -1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %lld ****\n",lli);

   ld = -1.0;
   lli = llisub8(lli,ld);
   if(lli == -1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %lld ****\n",lli);
}

long long int llisub1(long long int lli, signed char sch)
{
    lli = sch;
    return lli;
}

long long int llisub2(long long int lli, short sh)
{
    lli = sh;
    return lli;
}

long long int llisub3(long long int lli, long int li)
{
    lli = li;
    return lli;
}

long long int llisub4(long long int lli, unsigned char uch)
{
    lli = uch;
    return lli;
}

long long int llisub5(long long int lli, unsigned short ush)
{
    lli = ush;
    return lli;
}

long long int llisub6(long long int lli, unsigned long int uli)
{
    lli = uli;
    return lli;
}

long long int llisub7(long long int lli, unsigned long long int ulli)
{
    lli = ulli;
    return lli;
}

long long int llisub8(long long int lli, long double ld)
{
    lli = ld;
    return lli;
}
