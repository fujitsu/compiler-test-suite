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

#define XF (1.123iF + 2300.123F)
#define XD (1.123i + 3300.123)
#define XL (1.0iL + 4300.123L)
#define YF (2.0iF + 4.0F)
#define YD (2.0i + 6.0)
#define YL (2.0iL + 8.0L)
int main()
{
  complexfloat cf;
  complexdouble cd;
  complexlongdouble cl;

  cd = XF + YF;
  dump(&cd, sizeof(cd));
  cd = XD + YD;
  dump(&cd, sizeof(cd));
  cd = XL + YL;
  dump(&cd, sizeof(cd));

  cd = + YF;
  dump(&cd, sizeof(cd));
  cd = + YD;
  dump(&cd, sizeof(cd));
  cd = + YL;
  dump(&cd, sizeof(cd));

  cd = - YF;
  dump(&cd, sizeof(cd));
  cd = - YD;
  dump(&cd, sizeof(cd));
  cd = - YL;
  dump(&cd, sizeof(cd));

  cd = XF - YF;
  dump(&cd, sizeof(cd));
  cd = XD - YD;
  dump(&cd, sizeof(cd));
  cd = XL - YL;
  dump(&cd, sizeof(cd));

  cd = XF * YF;
  dump(&cd, sizeof(cd));
  cd = XD * YD;
  dump(&cd, sizeof(cd));
  cd = XL * YL;
  dump(&cd, sizeof(cd));

  cd = XF / YF;
  dump(&cd, sizeof(cd));
  cd = XD / YD;
  dump(&cd, sizeof(cd));
  cd = XL / YL;
  dump(&cd, sizeof(cd));
}
