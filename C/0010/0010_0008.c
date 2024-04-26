#include <stdio.h>

double dsub1(double d, signed char sch);
double dsub2(double d, short sh);
double dsub3(double d, long int li);
double dsub4(double d, long long int lli);
double dsub5(double d, unsigned char uch);
double dsub6(double d, unsigned short ush);
double dsub7(double d, unsigned long int uli);
double dsub8(double d, unsigned long long int ulli);
double dsub9(double d, float f);
double dsub10(double d, long double ld);

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

   sch = 1;
   d = dsub1(d,sch);
   if(d == 1.0)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %f ****\n",d);

   sh  = 1;
   d = dsub2(d,sh);
   if(d == 1.0)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %f ****\n",d);

   li = 1;
   d = dsub3(d,li);
   if(d == 1.0)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %f ****\n",d);

   lli = 1;
   d = dsub4(d,lli);
   if(d == 1.0)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %f ****\n",d);

   uch = 1;
   d = dsub5(d,uch);
   if(d == 1.0)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %f ****\n",d);

   ush = 1;
   d = dsub6(d,ush);
   if(d == 1.0)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %f ****\n",d);

   uli = 1;
   d = dsub7(d,uli);
   if(d == 1.0)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %f ****\n",d);

   ulli = 1;
   d = dsub8(d,ulli);
   if(d == 1.0)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %f ****\n",d);

   f = 1.0;
   d = dsub9(d,f);
   if(d == 1.0)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %f ****\n",d);

   ld = 1.0l;
   d = dsub10(d,ld);
   if(d == 1.0)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %f ****\n",d);
}

double dsub1(double d, signed char sch)
{
    d = sch;
    return d;
}

double dsub2(double d, short sh)
{
    d = sh;
    return d;
}

double dsub3(double d, long int li)
{
    d = li;
    return d;
}

double dsub4(double d, long long int lli)
{
    d = lli;
    return d;
}

double dsub5(double d, unsigned char uch)
{
    d = uch;
    return d;
}

double dsub6(double d, unsigned short ush)
{
    d = ush;
    return d;
}

double dsub7(double d, unsigned long int uli)
{
    d = uli;
    return d;
}

double dsub8(double d, unsigned long long int ulli)
{
    d = ulli;
    return d;
}

double dsub9(double d, float f)
{
    d = f;
    return d;
}

double dsub10(double d, long double ld)
{
    d = ld;
    return d;
}
