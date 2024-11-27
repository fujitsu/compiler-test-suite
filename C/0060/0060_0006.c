#include <stdlib.h>
#include <stdio.h>

void r4(int *res)
{
  *res ++ = ((0.0f/0.0f) == 1.f);
  *res ++ = ((0.0f/0.0f) != 1.f);
  *res ++ = ((0.0f/0.0f) >  1.f);
  *res ++ = ((0.0f/0.0f) >= 1.f);
  *res ++ = ((0.0f/0.0f) <  1.f);
  *res ++ = ((0.0f/0.0f) <= 1.f);

  *res ++ = (2.f == (0.0f/0.0f));
  *res ++ = (2.f != (0.0f/0.0f));
  *res ++ = (2.f >  (0.0f/0.0f));
  *res ++ = (2.f >= (0.0f/0.0f));
  *res ++ = (2.f <  (0.0f/0.0f));
  *res ++ = (2.f <= (0.0f/0.0f));

  *res ++ = (!((0.0f/0.0f) == 1.f));
  *res ++ = (!((0.0f/0.0f) != 1.f));
  *res ++ = (!((0.0f/0.0f) >  1.f));
  *res ++ = (!((0.0f/0.0f) >= 1.f));
  *res ++ = (!((0.0f/0.0f) <  1.f));
  *res ++ = (!((0.0f/0.0f) <= 1.f));

  *res ++ = (!(2.f == (0.0f/0.0f)));
  *res ++ = (!(2.f != (0.0f/0.0f)));
  *res ++ = (!(2.f >  (0.0f/0.0f)));
  *res ++ = (!(2.f >= (0.0f/0.0f)));
  *res ++ = (!(2.f <  (0.0f/0.0f)));
  *res ++ = (!(2.f <= (0.0f/0.0f)));
}

void r8(int *res)
{
  *res ++ = ((0.0/0.0) == 1.);
  *res ++ = ((0.0/0.0) != 1.);
  *res ++ = ((0.0/0.0) >  1.);
  *res ++ = ((0.0/0.0) >= 1.);
  *res ++ = ((0.0/0.0) <  1.);
  *res ++ = ((0.0/0.0) <= 1.);

  *res ++ = (2. == (0.0/0.0));
  *res ++ = (2. != (0.0/0.0));
  *res ++ = (2. >  (0.0/0.0));
  *res ++ = (2. >= (0.0/0.0));
  *res ++ = (2. <  (0.0/0.0));
  *res ++ = (2. <= (0.0/0.0));

  *res ++ = (!((0.0/0.0) == 1.));
  *res ++ = (!((0.0/0.0) != 1.));
  *res ++ = (!((0.0/0.0) >  1.));
  *res ++ = (!((0.0/0.0) >= 1.));
  *res ++ = (!((0.0/0.0) <  1.));
  *res ++ = (!((0.0/0.0) <= 1.));

  *res ++ = (!(2. == (0.0/0.0)));
  *res ++ = (!(2. != (0.0/0.0)));
  *res ++ = (!(2. >  (0.0/0.0)));
  *res ++ = (!(2. >= (0.0/0.0)));
  *res ++ = (!(2. <  (0.0/0.0)));
  *res ++ = (!(2. <= (0.0/0.0)));
}

void r16(int *res)
{
  *res ++ = ((((long double)0.0)/((long double)0.0)) == (long double)1.);
  *res ++ = ((((long double)0.0)/((long double)0.0)) != (long double)1.);
  *res ++ = ((((long double)0.0)/((long double)0.0)) >  (long double)1.);
  *res ++ = ((((long double)0.0)/((long double)0.0)) >= (long double)1.);
  *res ++ = ((((long double)0.0)/((long double)0.0)) <  (long double)1.);
  *res ++ = ((((long double)0.0)/((long double)0.0)) <= (long double)1.);

  *res ++ = ((long double)2. == (((long double)0.0)/((long double)0.0)));
  *res ++ = ((long double)2. != (((long double)0.0)/((long double)0.0)));
  *res ++ = ((long double)2. >  (((long double)0.0)/((long double)0.0)));
  *res ++ = ((long double)2. >= (((long double)0.0)/((long double)0.0)));
  *res ++ = ((long double)2. <  (((long double)0.0)/((long double)0.0)));
  *res ++ = ((long double)2. <= (((long double)0.0)/((long double)0.0)));

  *res ++ = (!((((long double)0.0)/((long double)0.0)) == (long double)1.));
  *res ++ = (!((((long double)0.0)/((long double)0.0)) != (long double)1.));
  *res ++ = (!((((long double)0.0)/((long double)0.0)) >  (long double)1.));
  *res ++ = (!((((long double)0.0)/((long double)0.0)) >= (long double)1.));
  *res ++ = (!((((long double)0.0)/((long double)0.0)) <  (long double)1.));
  *res ++ = (!((((long double)0.0)/((long double)0.0)) <= (long double)1.));

  *res ++ = (!((long double)2. == (((long double)0.0)/((long double)0.0))));
  *res ++ = (!((long double)2. != (((long double)0.0)/((long double)0.0))));
  *res ++ = (!((long double)2. >  (((long double)0.0)/((long double)0.0))));
  *res ++ = (!((long double)2. >= (((long double)0.0)/((long double)0.0))));
  *res ++ = (!((long double)2. <  (((long double)0.0)/((long double)0.0))));
  *res ++ = (!((long double)2. <= (((long double)0.0)/((long double)0.0))));
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

