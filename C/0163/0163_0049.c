#include <stdio.h>

typedef struct COMPLEX {
  double real;
  double imag;
} complex;

void g_axdx(complex *p1,complex *p2,complex *p3)
{
  long double ar,ai,br,bi,tmp;

  ar = (long double) p2->real;
  ai = (long double) p2->imag;
  br = (long double) p3->real;
  bi = (long double) p3->imag;
  tmp = 1. / ((bi * bi) + (br * br));
  p1->imag = ((br * ai) - (bi * ar)) * tmp;
  p1->real = ((bi * ai) + (br * ar)) * tmp;
}
int main()
{
   complex a,b,c;
   a.real = 1.;
   a.imag = 2.;
   b.real = 3.;
   b.imag = 4.;

   g_axdx(&c,&a,&b);

   if( c.real != 0.44 ) puts("NG1");
   if( c.imag != 0.08 ) puts("NG2");
   puts("PASS");


}
