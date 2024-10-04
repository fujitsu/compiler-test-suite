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

#define XF (1.123457687iF + 2.123457687)
#define XD (1.123457687i + 3.123457687)
#define XL (1.123457687iL + 4.123457687)
#define YF (2.123457687iF + 2.123457687)
#define YD (2.123457687i + 3.123457687)
#define YL (2.123457687iL + 4.123457687)
int main()
{
  complexfloat cf;
  complexdouble cd;
  complexlongdouble cl;

  cf = XF == YF;
  dump(&cf, sizeof(cf));
  cf = XD == YD;
  dump(&cf, sizeof(cf));
  cf = XL == YL;
  dump(&cf, sizeof(cf));

  cf = XF != YF;
  dump(&cf, sizeof(cf));
  cf = XD != YD;
  dump(&cf, sizeof(cf));
  cf = XL != YL;
  dump(&cf, sizeof(cf));
}
