#include <stdlib.h>
#include <stdio.h>

void r4(int *res)
{
  float f = (0.0f/0.0f);
  *res ++ = (f == 1.f);
  *res ++ = (f != 1.f);
  *res ++ = (f >  1.f);
  *res ++ = (f >= 1.f);
  *res ++ = (f <  1.f);
  *res ++ = (f <= 1.f);

  *res ++ = (2.f == f);
  *res ++ = (2.f != f);
  *res ++ = (2.f >  f);
  *res ++ = (2.f >= f);
  *res ++ = (2.f <  f);
  *res ++ = (2.f <= f);

  *res ++ = (!(f == 1.f));
  *res ++ = (!(f != 1.f));
  *res ++ = (!(f >  1.f));
  *res ++ = (!(f >= 1.f));
  *res ++ = (!(f <  1.f));
  *res ++ = (!(f <= 1.f));

  *res ++ = (!(2.f == f));
  *res ++ = (!(2.f != f));
  *res ++ = (!(2.f >  f));
  *res ++ = (!(2.f >= f));
  *res ++ = (!(2.f <  f));
  *res ++ = (!(2.f <= f));
}

void r8(int *res)
{
  double d = (0.0/0.0);
  *res ++ = (d == 1.);
  *res ++ = (d != 1.);
  *res ++ = (d >  1.);
  *res ++ = (d >= 1.);
  *res ++ = (d <  1.);
  *res ++ = (d <= 1.);

  *res ++ = (2. == d);
  *res ++ = (2. != d);
  *res ++ = (2. >  d);
  *res ++ = (2. >= d);
  *res ++ = (2. <  d);
  *res ++ = (2. <= d);

  *res ++ = (!(d == 1.));
  *res ++ = (!(d != 1.));
  *res ++ = (!(d >  1.));
  *res ++ = (!(d >= 1.));
  *res ++ = (!(d <  1.));
  *res ++ = (!(d <= 1.));

  *res ++ = (!(2. == d));
  *res ++ = (!(2. != d));
  *res ++ = (!(2. >  d));
  *res ++ = (!(2. >= d));
  *res ++ = (!(2. <  d));
  *res ++ = (!(2. <= d));
}

void r16(int *res)
{
  long double q = (((long double)0.0)/((long double)0.0));
  *res ++ = (q == (long double)1.);
  *res ++ = (q != (long double)1.);
  *res ++ = (q >  (long double)1.);
  *res ++ = (q >= (long double)1.);
  *res ++ = (q <  (long double)1.);
  *res ++ = (q <= (long double)1.);

  *res ++ = ((long double)2. == q);
  *res ++ = ((long double)2. != q);
  *res ++ = ((long double)2. >  q);
  *res ++ = ((long double)2. >= q);
  *res ++ = ((long double)2. <  q);
  *res ++ = ((long double)2. <= q);

  *res ++ = (!(q == (long double)1.));
  *res ++ = (!(q != (long double)1.));
  *res ++ = (!(q >  (long double)1.));
  *res ++ = (!(q >= (long double)1.));
  *res ++ = (!(q <  (long double)1.));
  *res ++ = (!(q <= (long double)1.));

  *res ++ = (!((long double)2. == q));
  *res ++ = (!((long double)2. != q));
  *res ++ = (!((long double)2. >  q));
  *res ++ = (!((long double)2. >= q));
  *res ++ = (!((long double)2. <  q));
  *res ++ = (!((long double)2. <= q));
}

void check(int res[],const int ans[])
{
  int i;
  for(i=0;i<24;i++) {
    if( res[i] != ans[i] ) {
      printf("NG (1) %d\n", res[i], ans[i]);
      exit(1);
    }
  }
}
int main()
{
  int res[24];
  const static int ans[] = { 0,1,0,0,0,0, 0,1,0,0,0,0, 1,0,1,1,1,1, 1,0,1,1,1,1 };
  
  r4(res);
  check(res,ans);
  r8(res);
  check(res,ans);
  r16(res);
  check(res,ans);
  puts("PASS");
}

