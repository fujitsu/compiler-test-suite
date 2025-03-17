#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  long long int      ll,*llp;
  int                ans;
  printf(" START\n");
 
  ll = + (long long int)0x7fffffffffffffff;
  if (ll == 9223372036854775807)
    printf("---  (08-01) OK ---\n");
  else {
    printf("***  (08-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ll = + (long long int)0xffffffffffffffff;
  if (ll == -1)
    printf("---  (08-02) OK ---\n");
  else {
    printf("***  (08-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ll = - (long long int)0x7fffffffffffffff;
  if (ll == -9223372036854775807)
    printf("---  (08-03) OK ---\n");
  else {
    printf("***  (08-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ll = - (long long int)0xffffffffffffffff ;
 
  if (ll == 1)
    printf("---  (08-04) OK ---\n");
  else {
    printf("***  (08-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ll = ~(long long int)-9223372036854775807 ;
 
  if (ll ==  9223372036854775806)
    printf("---  (08-05) OK ---\n");
  else {
    printf("***  (08-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ll = ~(long long int)1;
 
  if (ll == -2)
    printf("---  (08-06) OK ---\n");
  else {
    printf("***  (08-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = !(long long int)9223372036854775807;
 
  if (ans == 0)
    printf("---  (08-07) OK ---\n");
  else {
    printf("***  (08-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = !(long long int)0;
 
  if (ans == 1)
    printf("---  (08-08) OK ---\n");
  else {
    printf("***  (08-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ll = 9223372036854775807;
  llp = &ll;
  if (*llp == 9223372036854775807)
    printf("---  (08-09) OK ---\n");
  else {
    printf("***  (08-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ll = -9223372036854775808;
  llp = &ll;
  if (*llp == -9223372036854775808)
    printf("---  (08-10) OK ---\n");
  else {
    printf("***  (08-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  printf(" END  \n");
exit (0);
}
