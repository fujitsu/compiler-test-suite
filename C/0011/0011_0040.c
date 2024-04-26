#include  <stdio.h>

int main()
{
   signed   char             sch;
   unsigned char             uch;
   short                     sh;
   unsigned short            ush;
   long int                  lisub1(long int li, signed char sch),lisub2(long int li, short sh),lisub3(long int li, long int lli),lisub4(long int li, unsigned char uch),
                             lisub5(long int li, unsigned short ush),lisub6(long int li, unsigned long int uli),lisub7(long int li, unsigned long int ulli),lisub8(long int li, float f),
                             lisub9(long int li, double d),lisub10(long int li, long double ld),li;
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
   sch  = -1;
   li = lisub1(li,sch);
   if(li == -1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %ld ****\n",li);

   sh = 0xffff;
   li = lisub2(li,sh);
   if(li == -1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %ld ****\n",li);

   lli = 0xffffffffffffffffL;
   li = lisub3(li,lli);
   if(li == -1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %ld ****\n",li);

   uch = 255;
   li = lisub4(li,uch);
   if(li == 255)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %ld ****\n",li);

   ush = 0xffff;
   li = lisub5(li,ush);
   if(li == 0xffff)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %lx ****\n",li);

#if INT64 | __sparcv9 | __x86_64__ | __aarch64__
   uli = 0xffffffffffffffffLL;
#else
   uli = 0xffffffff;
#endif
   li = lisub6(li,uli);
   if(li == -1)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %ld ****\n",li);

   ulli = 0xffffffffffffffffL;
   li = lisub7(li,ulli);
   if(li == -1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %ld ****\n",li);

   f = -1.0;
   li = lisub8(li,f);
   if(li == -1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %ld ****\n",li);

   d = -1.0;
   li = lisub9(li,d);
   if(li == -1)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %ld ****\n",li);

   ld = -1.0;
   li = lisub10(li,ld);
   if(li == -1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %ld ****\n",li);
}

long int lisub1(long int li, signed char sch)
{
    li = sch;
    return li;
}

long int lisub2(long int li, short sh)
{
    li = sh;
    return li;
}

long int lisub3(long int li, long int lli)
{
    li = lli;
    return li;
}

long int lisub4(long int li, unsigned char uch)
{
    li = uch;
    return li;
}

long int lisub5(long int li, unsigned short ush)
{
    li = ush;
    return li;
}

long int lisub6(long int li, unsigned long int uli)
{
    li = uli;
    return li;
}

long int lisub7(long int li, unsigned long int ulli)
{
    li = ulli;
    return li;
}

long int lisub8(long int li, float f)
{
    li = f;
    return li;
}

long int lisub9(long int li, double d)
{
    li = d;
    return li;
}

long int lisub10(long int li, long double ld)
{
    li = ld;
    return li;
}
