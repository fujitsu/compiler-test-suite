#include <stdio.h>
long long int lli;
long long int lli2;
long long int lli3;
int main()
{
  lli = 1;
  lli2 = 10;
  lli3 = 20;
  lli++;
  --lli2;
  lli3--;
  if (lli == 2 && lli2 == 9 && lli3 == 19)
    printf("ok\n");
  else
    printf("%lld, %lld, %lld\n", lli, lli2, lli3);
}
