#include <stdio.h>
#include <math.h>

void r4(double *res)
{
  *res ++ = ((1.0f/0.0f));
  *res ++ = ((-1.0f/0.0f));
  *res ++ = ((0.0f/0.0f));
}

void r8(double *res)
{
  *res ++ = ((1.0/0.0));
  *res ++ = ((-1.0/0.0));
  *res ++ = ((0.0/0.0));
}

void r16(double *res)
{
  *res ++ = ((double )(((long double)1.0)/((long double)0.0)));
  *res ++ = ((double )(((long double)-1.0)/((long double)0.0)));
  *res ++ = ((double )(((long double)0.0)/((long double)0.0)));
}

void r4_opt1(double *res)
{
  float f = 0.0f;
  *res ++ = ((1.0f/f));
  *res ++ = ((-1.0f/f));
  *res ++ = ((0.0f/f));
}

void r8_opt1(double *res)
{
  double d = 0.0;
  *res ++ = ((1.0/d));
  *res ++ = ((-1.0/d));
  *res ++ = ((0.0/d));
}

void r16_opt1(double *res)
{
  long double q = (long double)0.0;
  *res ++ = ((double )(((long double)1.0)/(q)));
  *res ++ = ((double )(((long double)-1.0)/(q)));
  *res ++ = ((double )(((long double)0.0)/(q)));
}

void check(double res[],double ans[])
{
  int i;
  for(i=0;i<2;i++) {
    if( res[i] != ans[i] ) {
      printf("NG (%d) %llx %llx\n", i,  res[i], ans[i]);
      printf("NG (%d) %g %g\n", i,  res[i], ans[i]);
    }
  }
  if( !isnan(res[2]) ) {
    printf("NG (%d) %llx %llx\n", i,  res[i], ans[i]);
    printf("NG (%d) %g %g\n", i,  res[i], ans[i]);
  }
}
int main()
{
  double res[3];
  static double ans[3];
  
  *(long long *)&ans[0] = 0x7ff0000000000000LL;
  *(long long *)&ans[1] = 0xfff0000000000000LL;

  r4(res);
  check(res,ans);
  r8(res);
  check(res,ans);
  r16(res);
  check(res,ans);

  r4_opt1(res);
  check(res,ans);
  r8_opt1(res);
  check(res,ans);
  r16_opt1(res);
  check(res,ans);

  puts("PASS");
}

