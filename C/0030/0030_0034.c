#include <stdio.h>
#if __GNUC__
#define  complexfloat  __complex__ float
#define  complexdouble  __complex__ double
#define  complexlongdouble __complex__ long double
#else
#define  complexfloat  _Complex float
#define  complexdouble  _Complex double
#define  complexlongdouble _Complex long double
#endif

#include <complex.h>

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

#define XF (1.23452345iF + 22345.2345F)
#define XD (1.23452345i + 3234523.45)
#define XL (1.23452345iL + 423452.345L)
#define YF (2.23452345iF + 4.23452345F)
#define YD (2.23452345i + 6.23452345)
#define YL (2.23452345iL + 8.23452345L)
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
