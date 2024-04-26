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
   unsigned long long int    ullisub1(unsigned long long int ulli, signed char sch),
                             ullisub2(unsigned long long int ulli, short sh),
                             ullisub3(unsigned long long int ulli, long int li),
                             ullisub4(unsigned long long int ulli, long long int lli),
                             ullisub5(unsigned long long int ulli, unsigned char uch),
                             ullisub6(unsigned long long int ulli, unsigned short ush),
                             ullisub7(unsigned long long int ulli, unsigned long int uli),
                             ullisub8(unsigned long long int ulli, long double ld),ulli;
   float                     f;
   double                    d;
#ifdef NO_LONG_DOUBLE
   double               ld;
#else
   long double               ld;
#endif
   sch = 1;
   ulli = ullisub1(ulli,sch);
   if(ulli == 1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %llx ****\n",ulli);

   sh  = 1;
   ulli = ullisub2(ulli,sh);
   if(ulli == 1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %llx ****\n",ulli);

   li = 1;
   ulli = ullisub3(ulli,li);
   if(ulli == 1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %llx ****\n",ulli);

   lli = 1;
   ulli = ullisub4(ulli,lli);
   if(ulli == 1)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %llx ****\n",ulli);

   uch = 1;
   ulli = ullisub5(ulli,uch);
   if(ulli == 1)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %llx ****\n",ulli);

   ush = 1;
   ulli = ullisub6(ulli,ush);
   if(ulli == 1)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %llx ****\n",ulli);

   uli = 1;
   ulli = ullisub7(ulli,uli);
   if(ulli == 1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %llx ****\n",ulli);

   ld = 1.0;
   ulli = ullisub8(ulli,ld);
   if(ulli == 1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %llu ****\n",ulli);
}

unsigned long long int ullisub1(unsigned long long int ulli, signed char sch)
{
    ulli = sch;
    return ulli;
}

unsigned long long int ullisub2(unsigned long long int ulli, short sh)
{
    ulli = sh;
    return ulli;
}

unsigned long long int ullisub3(unsigned long long int ulli, long int li)
{
    ulli = li;
    return ulli;
}

unsigned long long int ullisub4(unsigned long long int ulli, long long int lli)
{
    ulli = lli;
    return ulli;
}

unsigned long long int ullisub5(unsigned long long int ulli, unsigned char uch)
{
    ulli = uch;
    return ulli;
}

unsigned long long int ullisub6(unsigned long long int ulli, unsigned short ush)
{
    ulli = ush;
    return ulli;
}

unsigned long long int ullisub7(unsigned long long int ulli, unsigned long int uli)
{
    ulli = uli;
    return ulli;
}

unsigned long long int ullisub8(unsigned long long int ulli, long double ld)
{
    ulli = ld;
    return ulli;
}
