#include <stdio.h>

int main()
{
  long long int      ll;
  int                ans;
  printf("04 START\n");

  ll = (long long int)0xffff0000ffff0000 << (long long int)1;
  if (ll == 0xfffe0001fffe0000)

    printf("--- 04 (04-01) OK ---\n");
  else {
    printf("*** 04 (04-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)0xffff0000ffff0000 >> (short int)1 ;
  if (ll == 0xffff80007fff8000)

    printf("--- 04 (04-02) OK ---\n");
  else {
    printf("*** 04 (04-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)0x7fff00007fff0000 >> (char)1 ;
  if (ll == 0x3fff80003fff8000)

    printf("--- 04 (04-03) OK ---\n");
  else {
    printf("*** 04 (04-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)9223372036854775806 <
        (long long int)9223372036854775807;
  if (ans == 1)
    printf("--- 04 (04-04) OK ---\n");
  else {
    printf("*** 04 (04-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)-9223372036854775807 >
        (long long int)-9223372036854775808;
  if (ans == 1)
    printf("--- 04 (04-05) OK ---\n");
  else {
    printf("*** 04 (04-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)9223372036854775806 <=
        (long long int)9223372036854775807;
  if (ans == 1)
    printf("--- 04 (04-06) OK ---\n");
  else {
    printf("*** 04 (04-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)-9223372036854775807 >=
        (long long int)-9223372036854775806;
  if (ans == 0)
    printf("--- 04 (04-07) OK ---\n");
  else {
    printf("*** 04 (04-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)9223372036854775807 ==
        (long long int)9223372036854775807;
  if (ans == 1)
    printf("--- 04 (04-08) OK ---\n");
  else {
    printf("*** 04 (04-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (long long int)-9 != (long long int)-9;

  if (ans == 0)
    printf("--- 04 (04-09) OK ---\n");
  else {
    printf("*** 04 (04-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  printf("04 END  \n");
}
