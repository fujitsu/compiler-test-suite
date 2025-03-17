#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
  unsigned long long int  ll;
  int                     ans;
  printf(" START\n");
 
  ll = (unsigned long long int)0xffff0000ffff0008 <<
       (unsigned long long int)1;
  if (ll == 0xfffe0001fffe0010)
    printf("---  (04-01) OK ---\n");
  else {
    printf("***  (04-01) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ll = (unsigned long long int)0xffff0000ffff0000 >>
       (short int)1 ;
  if (ll == 0x7fff80007fff8000)
    printf("---  (04-02) OK ---\n");
  else {
    printf("***  (04-02) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ll = (unsigned long long int)0x7fff00007fff0000 >> (char)1 ;
  if (ll == 0x3fff80003fff8000)
    printf("---  (04-03) OK ---\n");
  else {
    printf("***  (04-03) NG ***\n");
    printf("LL = %x\n" , ll);
  }
  ans = (unsigned long long int)0x8000000000000001 <
        (unsigned long long int)0x8000000000000002 ;
  if (ans == 1)
    printf("---  (04-04) OK ---\n");
  else {
    printf("***  (04-04) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = (unsigned long long int)9223372036854775809 >
        (unsigned long long int)9223372036854775808;
  if (ans == 1)
    printf("---  (04-05) OK ---\n");
  else {
    printf("***  (04-05) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = (unsigned long long int)0x8000000000000001<=
        (unsigned long long int)0x8000000000000000;
  if (ans == 0)
    printf("---  (04-06) OK ---\n");
  else {
    printf("***  (04-06) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = (unsigned long long int)0xffffffffffffffff >=
        (unsigned long long int)0xfffffffffffffffe;
  if (ans == 1)
    printf("---  (04-07) OK ---\n");
  else {
    printf("***  (04-07) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = (unsigned long long int)9223312000000775808 ==
        (unsigned long long int)9223312000000775808;
  if (ans == 1)
    printf("---  (04-08) OK ---\n");
  else {
    printf("***  (04-08) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
  ans = (unsigned long long int)9 != (unsigned long long int)9;
 
  if (ans == 0)
    printf("---  (04-09) OK ---\n");
  else {
    printf("***  (04-09) NG ***\n");
    printf("LL = %x\n" , ll);
  }
 
 
  printf(" END  \n");
exit (0);
}
