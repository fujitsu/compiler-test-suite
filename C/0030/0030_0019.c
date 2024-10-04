#include <stdio.h>
#if __GNUC__
#include <complex.h>
#define  complexfloat  __complex__ float
#define  complexdouble  __complex__ double
#define  complexlongdouble __complex__ long double
#else
#include <complex.h>
#define  complexfloat  _Complex float
#define  complexdouble  _Complex double
#define  complexlongdouble _Complex long double
#endif

int dump(void *vp, int size) {
  if (size == sizeof(complexfloat)) {
    complexfloat *cf = vp;
    printf("%f,%f\n",crealf(*cf),cimagf(*cf));
  }
  else if (size == sizeof(complexdouble)) {
    complexdouble *cd = vp;
    printf("%f,%f\n",creal(*cd),cimag(*cd));
  }
  else {
    complexlongdouble *cl = vp;
    printf("%Lf,%Lf\n",creall(*cl),cimagl(*cl));
  }
}

#define XF (1.0iF + 2.0F)
#define XD (1.0i + 3.0)
#define XL (1.0iL + 4.0L)
complexfloat YF = (2.0iF + 4.0F);
complexdouble YD = (2.0i + 6.0);
complexlongdouble YL = (2.0iL + 8.0L);
int main()
{
  complexfloat cf;
  complexdouble cd;
  complexlongdouble cl;

  cf = XF + YF;
  dump(&cf, sizeof(cf));
  cd = XD + YD;
  dump(&cd, sizeof(cd));
  cl = XL + YL;
  dump(&cl, sizeof(cl));

  cf = + YF;
  dump(&cf, sizeof(cf));
  cd = + YD;
  dump(&cd, sizeof(cd));
  cl = + YL;
  dump(&cl, sizeof(cl));

  cf = - YF;
  dump(&cf, sizeof(cf));
  cd = - YD;
  dump(&cd, sizeof(cd));
  cl = - YL;
  dump(&cl, sizeof(cl));

  cf = XF - YF;
  dump(&cf, sizeof(cf));
  cd = XD - YD;
  dump(&cd, sizeof(cd));
  cl = XL - YL;
  dump(&cl, sizeof(cl));

  cf = XF * YF;
  dump(&cf, sizeof(cf));
  cd = XD * YD;
  dump(&cd, sizeof(cd));
  cl = XL * YL;
  dump(&cl, sizeof(cl));

  cf = XF / YF;
  dump(&cf, sizeof(cf));
  cd = XD / YD;
  dump(&cd, sizeof(cd));
  cl = XL / YL;
  dump(&cl, sizeof(cl));
}
