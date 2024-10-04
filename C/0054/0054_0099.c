#include <stdio.h>

int main()
{
  unsigned long long int ll;
  int                ans;
  printf("05 START\n");

  ll = (unsigned long long int)0xffffffffffffffff &
       (unsigned long long int)0;
  if (ll == 0)

    printf("--- 05 (05-01) OK ---\n");
  else {
    printf("*** 05 (05-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)0xffff0000ffff0000 |
       (unsigned long long int)1 ;
  if (ll == 0xffff0000ffff0001)

    printf("--- 05 (05-02) OK ---\n");
  else {
    printf("*** 05 (05-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (unsigned long long int)0xffffffffffffffff ^
       (unsigned long long int)1 ;
  if (ll == 0xfffffffffffffffe)

    printf("--- 05 (05-03) OK ---\n");
  else {
    printf("*** 05 (05-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int)9223372036854775806 &&
        (unsigned long long int)9223372036854775808;
  if (ans == 1)
    printf("--- 05 (05-04) OK ---\n");
  else {
    printf("*** 05 (05-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int)18446744073709551615 &&
        (unsigned long long int)10000000000000000000;
  if (ans == 1)
    printf("--- 05 (05-05) OK ---\n");
  else {
    printf("*** 05 (05-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int)9223372036854775806 &&
        (unsigned long long int)0;
  if (ans == 0)
    printf("--- 05 (05-06) OK ---\n");
  else {
    printf("*** 05 (05-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int) 0 ||
        (unsigned long long int)18446744073709551615;
  if (ans == 1)
    printf("--- 05 (05-07) OK ---\n");
  else {
    printf("*** 05 (05-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int) 0 ||
        (unsigned long long int) 9223372036854775807;
  if (ans == 1)
    printf("--- 05 (05-08) OK ---\n");
  else {
    printf("*** 05 (05-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ans = (unsigned long long int) 0 ||
        (unsigned long long int) 0 ;
  if (ans == 0)
    printf("--- 05 (05-09) OK ---\n");
  else {
    printf("*** 05 (05-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll  = (unsigned long long int)0 ?
        (unsigned long long int)1 : (unsigned long long int)0;
  if (ll == 0)
    printf("--- 05 (05-10) OK ---\n");
  else {
    printf("*** 05 (05-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll  = (unsigned long long int)10 ?
        (unsigned long long int)1 : (unsigned long long int)0;
  if (ll == 1)
    printf("--- 05 (05-11) OK ---\n");
  else {
    printf("*** 05 (05-11) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  printf("05 END  \n");
}
