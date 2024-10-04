#include <stdio.h>

int main()
{
  long long int      ll;

  printf("03 START\n");

  ll = (long long int)999999999000000000 + (long long int)1000000000;
  if (ll == 1000000000000000000)

    printf("--- 03 (03-01) OK ---\n");
  else {
    printf("*** 03 (03-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-123456789012345678 + (long long int)-1000000000;
  if (ll == -123456790012345678)

    printf("--- 03 (03-02) OK ---\n");
  else {
    printf("*** 03 (03-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)1000000000000 - (long long int)2000000000000;
  if (ll ==-1000000000000)

    printf("--- 03 (03-03) OK ---\n");
  else {
    printf("*** 03 (03-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll =  (long long int)-900000000000000000 -
       (long long int)-1000000000000000000 ;
  if (ll == 100000000000000000)
    printf("--- 03 (03-04) OK ---\n");
  else {
    printf("*** 03 (03-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)2000000000000 * (long long int)20000;
  if (ll == 40000000000000000)

    printf("--- 03 (03-05) OK ---\n");
  else {
    printf("*** 03 (03-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-111111111111111111 * (long long int)-9;

  if (ll == 999999999999999999)
    printf("--- 03 (03-06) OK ---\n");
  else {
    printf("*** 03 (03-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)1000000000000000000 / (long long int)1000000000;
  if (ll == 1000000000)

    printf("--- 03 (03-07) OK ---\n");
  else {
    printf("*** 03 (03-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-888888888888888888 / (long long int)-8;

  if (ll == 111111111111111111)
    printf("--- 03 (03-08) OK ---\n");
  else {
    printf("*** 03 (03-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)1000000000000000000 % (long long int)3;
  if (ll == 1)

    printf("--- 03 (03-09) OK ---\n");
  else {
    printf("*** 03 (03-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  ll = (long long int)-888888888888888888 % (long long int)-8;

  if (ll == 0)
    printf("--- 03 (03-10) OK ---\n");
  else {
    printf("*** 03 (03-10) NG ***\n");
    printf("LL = %x\n" , ll);
  }

  printf("03 END  \n");
}
