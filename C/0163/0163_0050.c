#include <stdio.h>

typedef struct COMPLEX {
  double real;
  double imag;
} complex;

union R10 {
  char data[10];
  long double r10;
} ;

const union R10
  cnt =  {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x80,0xff,0x3f};

void g_axdx(complex *p1,complex *p2,complex *p3)
{
  long double t01,t02,t03,t04,t05;
  long double t06,t07,t08,t09,t10;
  long double t11,t12,t13,t14,t15;
  long double t16,t17,t18,t19,t20;
  long double t21;

  t01 = (long double) p2->real;
#if DEBUG
printf("%LG\n",t01);
#endif
  t02 = (long double) p2->imag;
  t03 = t02;
  t04 = cnt.r10;
  t05 = (long double) p3->real;
  t06 = t05 * t02;
  t07 = t05;
  t08 = t07 * t07;
#if DEBUG
printf("t08=%LG\n",t08);
#endif
  t09 = (long double) p3->imag;
  t10 = t09 * t03;
  t11 = t09;
  t12 = t11 * t11;
#if DEBUG
printf("t11=%LG\n",t11);
#endif
  t13 = t12 + t08;
#if DEBUG
printf("t13=%LG\n",t13);
printf("t04=%LG\n",t04);
#endif

  t14 = t04 / t13;
#if DEBUG
printf("t14=%LG\n",t14);
#endif
  t15 = t01;

  t16 = t09 * t01;
#if DEBUG
printf("t16=%LG\n",t16);
#endif

  t17 = t05 * t15;
#if DEBUG
printf("t15=%LG\n",t15);
printf("t05=%LG\n",t05);
printf("t17=%LG\n",t17);
#endif

  t18 = t06 - t16;

  t19 = t14 * t18;
  p1->imag = t19;
  t20 = t10 + t17;
#if DEBUG
printf("t20=%LG\n",t20);
printf("t14=%LG\n",t14);
#endif
  t21 = t20 * t14;
#if DEBUG
printf("t20=%LG\n",t20);
printf("t21=%LG\n",t21);
#endif
  p1->real = t21;
}
int main()
{
   complex a,b,c;
   a.real = 1.;
   a.imag = 2.;
   b.real = 3.;
   b.imag = 4.;

   g_axdx(&c,&a,&b);

#if defined(i386) || defined(__x86_64__)
   if( c.real != 0.44 ) puts("NG1");
   if( c.imag != 0.08 ) puts("NG2");
#endif
   puts("PASS");


}

