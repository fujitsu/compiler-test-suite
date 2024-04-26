#include <stdio.h>

signed char schsub1(signed char sch, short sh);
signed char schsub2(signed char sch, long int li);
signed char schsub3(signed char sch, long long int lli);
signed char schsub4(signed char sch, unsigned char uch);
signed char schsub5(signed char sch, unsigned short ush);
signed char schsub6(signed char sch, unsigned long int uli);
signed char schsub7(signed char sch, unsigned long long int ulli);
signed char schsub8(signed char sch, float f);
signed char schsub9(signed char sch, double d);
signed char schsub10(signed char sch, long double ld);

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

   sh  = 0xffff;
   sch = schsub1(sch,sh);
   if(sch == -1)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %d ****\n",sch);

   li = 0xffffffff;
   sch = schsub2(sch,li);
   if(sch == -1)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %d ****\n",sch);

   lli = 0xffffffffffffffffL;
   sch = schsub3(sch,lli);
   if(sch == -1)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %d ****\n",sch);

   uch = 0xff;
   sch = schsub4(sch,uch);
   if(sch == -1)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %d ****\n",sch);

   ush = 0xffff;
   sch = schsub5(sch,ush);
   if(sch == -1)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %d ****\n",sch);

   uli = 0xffffffff;
   sch = schsub6(sch,uli);
   if(sch == -1)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %d ****\n",sch);

   ulli = 0xffffffffffffffffL;
   sch = schsub7(sch,ulli);
   if(sch == -1)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %d ****\n",sch);

   f = -1.0;
   sch = schsub8(sch,f);
   if(sch == -1)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %d ****\n",sch);

   d = -1.0;
   sch = schsub9(sch,d);
   if(sch == -1)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %d ****\n",sch);

   ld = -1.0;
   sch = schsub10(sch,ld);
   if(sch == -1)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %d ****\n",sch);
}

signed char schsub1(signed char sch, short sh)
{
    sch = sh;
    return sch;
}

signed char schsub2(signed char sch, long int li)
{
    sch = li;
    return sch;
}

signed char schsub3(signed char sch, long long int lli)
{
    sch = lli;
    return sch;
}

signed char schsub4(signed char sch, unsigned char uch)
{
    sch = uch;
    return sch;
}

signed char schsub5(signed char sch, unsigned short ush)
{
    sch = ush;
    return sch;
}

signed char schsub6(signed char sch, unsigned long int uli)
{
    sch = uli;
    return sch;
}

signed char schsub7(signed char sch, unsigned long long int ulli)
{
    sch = ulli;
    return sch;
}

signed char schsub8(signed char sch, float f)
{
    sch = f;
    return sch;
}

signed char schsub9(signed char sch, double d)
{
    sch = d;
    return sch;
}

signed char schsub10(signed char sch, long double ld)
{
    sch = ld;
    return sch;
}
