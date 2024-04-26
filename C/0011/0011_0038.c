#include  <stdio.h>

int main()
{
   signed char              sch;
   unsigned char            uch;
   short                     sh;
   unsigned short           ush;
   long int                  li;
   unsigned long int        uli;
#ifdef NO_LONG_LONG
   long int             lli;
   unsigned long int   ulli;
#else
   long long int             lli;
   unsigned long long int   ulli;
#endif
   float                     f;
   double                    d;
#ifdef NO_LONG_DOUBLE
   double               ldsub1(double ld, signed char sch),ldsub2(double ld, short sh),
                        ldsub3(double ld, long int  li),ldsub4(double ld, long int lli),
#else
   long double               ldsub1(long double ld, signed char sch),ldsub2(long double ld, short sh),
                             ldsub3(long double ld, long int li),ldsub4(long double ld, long long int lli),
#endif
                             ldsub5(long double ld, unsigned char uch),ldsub6(long double ld, unsigned short ush),
                             ldsub7(long double ld, unsigned long int uli),ldsub8(long double ld, unsigned long long int ulli),
                             ldsub9(long double ld, float f),ldsub10(long double ld, double d),ld;
   sch = 1;
   ld = ldsub1(ld,sch);
   if(ld == 1.0)
      printf("**** 01 * O    K ****\n");
   else
      printf("**** 01 * N    G  VAL = %Lf ****\n",ld);

   sh  = 1;
   ld = ldsub2(ld,sh);
   if(ld == 1.0)
      printf("**** 02 * O    K ****\n");
   else
      printf("**** 02 * N    G  VAL = %Lf ****\n",ld);

   li = 1;
   ld = ldsub3(ld,li);
   if(ld == 1.0)
      printf("**** 03 * O    K ****\n");
   else
      printf("**** 03 * N    G  VAL = %Lf ****\n",ld);

   lli = 1;
   ld = ldsub4(ld,lli);
   if(ld == 1.0)
      printf("**** 04 * O    K ****\n");
   else
      printf("**** 04 * N    G  VAL = %Lf ****\n",ld);

   uch = 1;
   ld = ldsub5(ld,uch);
   if(ld == 1.0)
      printf("**** 05 * O    K ****\n");
   else
      printf("**** 05 * N    G  VAL = %Lf ****\n",ld);

   ush = 1;
   ld = ldsub6(ld,ush);
   if(ld == 1.0)
      printf("**** 06 * O    K ****\n");
   else
      printf("**** 06 * N    G  VAL = %Lf ****\n",ld);

   uli = 1;
   ld = ldsub7(ld,uli);
   if(ld == 1.0)
      printf("**** 07 * O    K ****\n");
   else
      printf("**** 07 * N    G  VAL = %Lf ****\n",ld);

   ulli = 1;
   ld = ldsub8(ld,ulli);
   if(ld == 1.0)
      printf("**** 08 * O    K ****\n");
   else
      printf("**** 08 * N    G  VAL = %Lf ****\n",ld);

   f = 1.0;
   ld = ldsub9(ld,f);
   if(ld == 1.0)
      printf("**** 09 * O    K ****\n");
   else
      printf("**** 09 * N    G  VAL = %Lf ****\n",ld);

   d = 1.0l;
   ld = ldsub10(ld,d);
   if(ld == 1.0)
      printf("**** 10 * O    K ****\n");
   else
      printf("**** 10 * N    G  VAL = %Lf ****\n",ld);
}

#ifdef NO_LONG_DOUBLE
double ldsub1(double ld, signed char sch)
#else
long double ldsub1(long double ld, signed char sch)
#endif
{
    ld = sch;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub2(double ld, short sh)
#else
long double ldsub2(long double ld, short sh)
#endif
{
    ld = sh;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub3(double ld, long int li)
#else
long double ldsub3(long double ld, long int li)
#endif
{
    ld = li;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub4(double ld, long int lli)
#else
long double ldsub4(long double ld, long long int lli)
#endif
{
    ld = lli;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub5(double ld, unsigned char uch)
#else
long double ldsub5(long double ld, unsigned char uch)
#endif
{
    ld = uch;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub6(double ld, unsigned short ush)
#else
long double ldsub6(long double ld, unsigned short ush)
#endif
{
    ld = ush;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub7(double ld, unsigned long int uli)
#else
long double ldsub7(long double ld, unsigned long int uli)
#endif
{
    ld = uli;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub8(double ld, unsigned long int ulli)
#else
long double ldsub8(long double ld, unsigned long long int ulli)
#endif
{
    ld = ulli;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub9(double ld, float f)
#else
long double ldsub9(long double ld, float f)
#endif
{
    ld = f;
    return ld;
}

#ifdef NO_LONG_DOUBLE
double ldsub10(double ld, double d)
#else
long double ldsub10(long double ld, double d)
#endif
{
    ld = d;
    return ld;
}