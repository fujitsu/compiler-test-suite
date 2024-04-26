#include <stdio.h>

float fsub1(float f, signed char sch);
float fsub2(float f, short sh);
float fsub3(float f, long int li);
float fsub4(float f, long long int lli);
float fsub5(float f, unsigned char uch);
float fsub6(float f, unsigned short ush);
float fsub7(float f, unsigned long int uli);
float fsub8(float f, unsigned long long int ulli);
float fsub9(float f, double d);
float fsub10(float f, long double ld);

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
   f = fsub1(f,sch);
   if(f == 1.0)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %f ****\n",f);

   sh  = 1;
   f = fsub2(f,sh);
   if(f == 1.0)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %f ****\n",f);

   li = 1;
   f = fsub3(f,li);
   if(f == 1.0)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %f ****\n",f);

   lli = 1;
   f = fsub4(f,lli);
   if(f == 1.0)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %f ****\n",f);

   uch = 1;
   f = fsub5(f,uch);
   if(f == 1.0)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %f ****\n",f);

   ush = 1;
   f = fsub6(f,ush);
   if(f == 1.0)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %f ****\n",f);

   uli = 1;
   f = fsub7(f,uli);
   if(f == 1.0)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %f ****\n",f);

   ulli = 1;
   f = fsub8(f,ulli);
   if(f == 1.0)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %f ****\n",f);

   d = 1.0;
   f = fsub9(f,d);
   if(f == 1.0)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %f ****\n",f);

   ld = 1.0l;
   f = fsub10(f,ld);
   if(f == 1.0)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %f ****\n",f);
}

float fsub1(float f, signed char sch)
{
    f = sch;
    return f;
}

float fsub2(float f, short sh)
{
    f = sh;
    return f;
}

float fsub3(float f, long int li)
{
    f = li;
    return f;
}

float fsub4(float f, long long int lli)
{
    f = lli;
    return f;
}

float fsub5(float f, unsigned char uch)
{
    f = uch;
    return f;
}

float fsub6(float f, unsigned short ush)
{
    f = ush;
    return f;
}

float fsub7(float f, unsigned long int uli)
{
    f = uli;
    return f;
}

float fsub8(float f, unsigned long long int ulli)
{
    f = ulli;
    return f;
}

float fsub9(float f, double d)
{
    f = d;
    return f;
}

float fsub10(float f, long double ld)
{
    f = ld;
    return f;
}
