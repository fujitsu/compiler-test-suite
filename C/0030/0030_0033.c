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

#define XF (1.0iF + 120.0F)
#define XD (1.0i + 130.0)
#define XL (1.0iL + 140.0L)
#define YF (2.0iF + 4.0F)
#define YD (2.0i + 6.0)
#define YL (2.0iL + 8.0L)
int main()
{
  complexfloat cf;
  complexdouble cd;
  complexlongdouble cl;

  cl = XF + YF;
  dump(&cl, sizeof(cl));
  cl = XD + YD;
  dump(&cl, sizeof(cl));
  cl = XL + YL;
  dump(&cl, sizeof(cl));

  cl = + YF;
  dump(&cl, sizeof(cl));
  cl = + YD;
  dump(&cl, sizeof(cl));
  cl = + YL;
  dump(&cl, sizeof(cl));

  cl = - YF;
  dump(&cl, sizeof(cl));
  cl = - YD;
  dump(&cl, sizeof(cl));
  cl = - YL;
  dump(&cl, sizeof(cl));

  cl = XF - YF;
  dump(&cl, sizeof(cl));
  cl = XD - YD;
  dump(&cl, sizeof(cl));
  cl = XL - YL;
  dump(&cl, sizeof(cl));

  cl = XF * YF;
  dump(&cl, sizeof(cl));
  cl = XD * YD;
  dump(&cl, sizeof(cl));
  cl = XL * YL;
  dump(&cl, sizeof(cl));

  cl = XF / YF;
  dump(&cl, sizeof(cl));
  cl = XD / YD;
  dump(&cl, sizeof(cl));
  cl = XL / YL;
  dump(&cl, sizeof(cl));
}
