#include <stdlib.h>
#include <math.h>
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
   unsigned long long int    ulli;
   float                     fsub1(),fsub2(),fsub3(),fsub4(),
                             fsub5(),fsub6(),fsub7(),fsub8(),
                             fsub9(),fsub10(),f=0.0;
   double                    d;
   long double               ld;

   sch = 1;
   f = fsub1(f,sch);
   if(f == 1.0)
      printf("**** SCOCVA9 - 01 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 01 * N    G  VAL = %x ****\n",f);

   sh  = 1;
   f = fsub2(f,sh);
   if(f == 1.0)
      printf("**** SCOCVA9 - 02 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 02 * N    G  VAL = %x ****\n",f);

   li = 1;
   f = fsub3(f,li);
   if(f == 1.0)
      printf("**** SCOCVA9 - 03 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 03 * N    G  VAL = %x ****\n",f);

   lli = 1;
   f = fsub4(f,lli);
   if(f == 1.0)
      printf("**** SCOCVA9 - 04 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 04 * N    G  VAL = %x ****\n",f);

   uch = 1;
   f = fsub5(f,uch);
   if(f == 1.0)
      printf("**** SCOCVA9 - 05 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 05 * N    G  VAL = %x ****\n",f);

   ush = 1;
   f = fsub6(f,ush);
   if(f == 1.0)
      printf("**** SCOCVA9 - 06 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 06 * N    G  VAL = %x ****\n",f);

   uli = 1;
   f = fsub7(f,uli);
   if(f == 1.0)
      printf("**** SCOCVA9 - 07 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 07 * N    G  VAL = %x ****\n",f);

   ulli = 1;
   f = fsub8(f,ulli);
   if(f == 1.0)
      printf("**** SCOCVA9 - 08 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 08 * N    G  VAL = %d ****\n",f);

   d = 1.0;
   f = fsub9(f,d);
   if(f == 1.0)
      printf("**** SCOCVA9 - 09 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 09 * N    G  VAL = %x ****\n",f);

   ld = 1.0l;
   f = fsub10(f,ld);
   if(f == 1.0)
      printf("**** SCOCVA9 - 10 * O    K ****\n");
   else
      printf("**** SCOCVA9 - 10 * N    G  VAL = %x ****\n",f);
exit (0);
}

float fsub1(f,sch)
  float f;
  signed char   sch;
{
    f = sch;
    return f;
}

float fsub2(f,sh)
  float f;
  short sh;
{
    f = sh;
    return f;
}

float fsub3(f,li)
  float f;
  long int     li;
{
    f = li;
    return f;
}

float fsub4(f,lli)
  float f;
  long long int     lli;
{
    f = lli;
    return f;
}

float fsub5(f,uch)
  float f;
  unsigned char    uch;
{
    f = uch;
    return f;
}

float fsub6(f,ush)
  float f;
  unsigned short        ush;
{
    f = ush;
    return f;
}

float fsub7(f,uli)
  float                   f;
  unsigned long int       uli;
{
    f = uli;
    return f;
}

float fsub8(f,ulli)
  float                   f;
  unsigned long long int  ulli;
{
    f = ulli;
    return f;
}

float fsub9(f,d)
  float          f;
  double         d;
{
    f = d;
    return f;
}

float fsub10(f,ld)
  float          f;
  long double    ld;
{
    f = ld;
    return f;
}
