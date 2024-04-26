#include  <stdio.h>

int main()
{
   signed char               sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  li;
   unsigned long int         ulisub1(unsigned long uli, signed char sch),ulisub2(unsigned long int uli, short sh),
                             ulisub3(unsigned long int uli, long int li),ulisub4(unsigned long int uli, long long int lli),
                             ulisub5(unsigned long int uli, unsigned char uch),ulisub6(unsigned long int uli, unsigned short ush),
                             ulisub7(unsigned long int uli, unsigned long long int ulli),ulisub8(unsigned long int uli, float f),
                             ulisub9(unsigned long int uli, double d),ulisub10(unsigned long int uli, long double ld),uli;
   long long int             lli;
   unsigned long long int    ulli;
   float                     f;
   double                    d;
#ifdef NO_LONG_DOUBLE
   double               ld;
#else
   long double               ld;
#endif
   sch = 1;
   uli = ulisub1(uli,sch);
   if(uli == 1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %lx ****\n",uli);

   sh  = 1;
   uli = ulisub2(uli,sh);
   if(uli == 1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %lx ****\n",uli);

   li = 1;
   uli = ulisub3(uli,li);
   if(uli == 1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %lx ****\n",uli);

   lli = 1;
   uli = ulisub4(uli,lli);
   if(uli == 1)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %lx ****\n",uli);

   uch = 1;
   uli = ulisub5(uli,uch);
   if(uli == 1)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %lx ****\n",uli);

   ush = 1;
   uli = ulisub6(uli,ush);
   if(uli == 1)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %lx ****\n",uli);

   ulli = 1;
   uli = ulisub7(uli,ulli);
   if(uli == 1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %lx ****\n",uli);

   f = 1.0;
   uli = ulisub8(uli,f);
   if(uli == 1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %lx ****\n",uli);

   d = 1.0;
   uli = ulisub9(uli,d);
   if(uli == 1 )
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %lu ****\n",uli);

   ld = 1.0;
   uli = ulisub10(uli,ld);
   if(uli == 1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %lu ****\n",uli);
}

unsigned long int ulisub1(unsigned long uli, signed char sch)
{
    uli = sch;
    return uli;
}

unsigned long int ulisub2(unsigned long int uli, short sh)
{
    uli = sh;
    return uli;
}

unsigned long int ulisub3(unsigned long int uli, long int li)
{
    uli = li;
    return uli;
}

unsigned long int ulisub4(unsigned long int uli, long long int lli)
{
    uli = lli;
    return uli;
}

unsigned long int ulisub5(unsigned long int uli, unsigned char uch)
{
    uli = uch;
    return uli;
}

unsigned long int ulisub6(unsigned long int uli, unsigned short ush)
{
    uli = ush;
    return uli;
}

unsigned long int ulisub7(unsigned long int uli, unsigned long long int ulli)
{
    uli = ulli;
    return uli;
}

unsigned long int ulisub8(unsigned long int uli, float f)
{
    uli = f;
    return uli;
}

unsigned long int ulisub9(unsigned long int uli, double d)
{
    uli = d;
    return uli;
}

unsigned long int ulisub10(unsigned long int uli, long double ld)
{
    uli = ld;
    return uli;
}
