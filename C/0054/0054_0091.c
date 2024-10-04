#include <stdio.h>

int main()
{
  long long int      ll;
  int                ans;
  printf("07 START\n");

  ll = (long long int)0xffff0000ffff0000;
  ll <<= (long long int)1;
  if (ll == 0xfffe0001fffe0000)
    printf("--- 07 (07-01) OK ---\n");
  else {
    printf("*** 07 (07-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)3;
  ll <<= (long long int)2;
  if (ll == 12)
    printf("--- 07 (07-02) OK ---\n");
  else {
    printf("*** 07 (07-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)0xffff0000ffff0000;
  ll >>= (long long int)1 ;
  if (ll == 0xffff80007fff8000)
    printf("--- 07 (07-03) OK ---\n");
  else {
    printf("*** 07 (07-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)15;
  ll >>= (long long int)3 ;
  if (ll == 1)
    printf("--- 07 (07-04) OK ---\n");
  else {
    printf("*** 07 (07-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)9223372036854775807;
  ll &= (long long int)-9223372036854775808;
  if (ll == 0)
    printf("--- 07 (07-05) OK ---\n");
  else {
    printf("*** 07 (07-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)12;
  ll &= (char)9;
  if (ll == 8)
    printf("--- 07 (07-06) OK ---\n");
  else {
    printf("*** 07 (07-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-9223372036854775807;
  ll ^= (long long int)-9223372036854775808;
  if (ll == 1)
    printf("--- 07 (07-07) OK ---\n");
  else {
    printf("*** 07 (07-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-1;
  ll ^= (long long int)0x0000ffff0000ffff;
  if (ll == 0xffff0000ffff0000)
    printf("--- 07 (07-08) OK ---\n");
  else {
    printf("*** 07 (07-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)9223372036854775807 ;
  ll |= (long long int)-9223372036854775808;
  if (ll == -1)
    printf("--- 07 (07-09) OK ---\n");
  else {
    printf("*** 07 (07-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)123456;
  ll |= (int)-1;
  if (ll == -1)
    printf("--- 07 (07-10) OK ---\n");
  else {
    printf("*** 07 (07-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  printf("07 END  \n");
}
