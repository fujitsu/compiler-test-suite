#include <stdio.h>
#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double
#include <complex.h>

struct XCF {
  int x;
  CF f[2];
} scf = {0, 0, 787+124.1234iF};
struct XCD {
  int x;
  CD d[2];
} scd = {0, 0, 1787+1124.1234iF};
struct XCL {
  int x;
  CL l[2];
} scl = {0, 0, 2787+2124.1234iF};

CF xf = (12345.12345F+-123456.1234561234iF), *xfp=&xf;
CD xd = (112345.12345+-123456.1234561234i), *xdp=&xd;
CL xl = (123.41234512345L+-123.45612341234561234iL), *xlp=&xl;
CF yf = (112345.12345F+-2123456.21234561234iF), *yfp=&yf;
CD yd = (-12345.12345+-2123456.2212345612341234i), *ydp=&yd;
CL yl = (12341123451234.12345L+-56123412341234.212345612341234iL), *ylp=&yl;

CD foo() ;
CF yfpf(CF p, CD q){ return foo() - p * q + scf.f[1];}
CD ydpf(CD p, CL q){ return p * (foo() - q) + (unsigned char)scd.d[1];}
CL ylpf(CL p, CF q){ return p * (q - foo()) - scl.l[1];}

#define XF  (CF)xf
#define XD  (CF)xd
#define XL  (CF)xl
#define YF  yfpf(xf, xd)
#define YD  ydpf(xd, xl)
#define YL  ylpf(xl, yf)

int dump(void *vp, int size)
{
  if (size == sizeof(CF)) {
    CF *cf = vp;
    printf("%f,%f\n",crealf(*cf),cimagf(*cf));
  }
  else if (size == sizeof(CD)) {
    CD *cd = vp;
    printf("%lf,%lf\n",creal(*cd),cimag(*cd));
  }
  else {
    CL *cl = vp;
    printf("%.5Lf,%.5Lf\n",creall(*cl),cimagl(*cl));
  }
}

double x() { return 10; }
CD foo() {
   return 256.256+2.512345iF+x();
}

#define d(x)  dump(&x, sizeof(x))
#define e(t, op)  \
  c##t = foo() op X##t op Y##t, d(c##t)

#define e1(t, op)  \
  c##t = op X##t, d(c##t)

#define e1y(t, op)  \
  c##t = op Y##t, d(c##t)

#define e3a(t,T)  \
  c##T = foo() + (true ? x##t : y##t), d(c##T);\
  c##T = foo() - (false ? x##t : y##t), d(c##T)

#define e3(t)  \
  c##t = foo() + (true ? X##t : Y##t), d(c##t);\
  c##t = foo() - (false ? X##t : Y##t), d(c##t)

int true = 1;
int false = 0;
int main()
{
  CF cF;
  CL cL;
  CD cD;

  e(F, +);
  e(L, +);
  e(F, -);
  e(L, -);
  e(F, *);
  e(F, /);
  e(D, /);
  e(L, /);
  e1(F, +);
  e1y(F, +);
  e1(D, +);
  e1(L, +);
  e1y(L, +);
  e1(F, +);
  e1y(F, +);
  e1(D, -);
  e1(L, -);
  e1y(L, -);
  e3(F);
  e3(L);
  e3a(f,F);
  e3a(d,D);
  e3a(l,L);
}

