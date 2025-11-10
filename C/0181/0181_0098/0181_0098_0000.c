#include <stdio.h>
static
long long subsub()
{
  return (long long)2;
}
static
long long sub1()
{
  return subsub()+subsub();
}
static
long long sub2()
{
  return subsub()*subsub();
}
int lto_sub_1()
{
  long long r_20;
  long long r_21;
  int compare, res, t_22;

  r_20=sub1();
  r_21=sub2();
  res = 1;
  if (r_20>=r_21) goto L10026;
 L10027:;
  compare=-1;
  goto L10028;
 L10026:;
  if (r_20<=r_21) goto L10029;
 L10030:;
  compare=1;
  goto L10028;
 L10029:;
  compare=0;
 L10028:;
  t_22=compare;
  if (t_22<0) goto L10011;
  res = res + 1;
 L10011:;
  res = res + 2;
  
  printf("%d\n",res);
}
