#include <stdio.h>

int main(){
  long long int           lli;
  unsigned long long int  llu;

  printf ("***  05  TEST  START  ***\n");

  llu = (unsigned long long int)18000000000000000000 %
        (unsigned long long int)3;
  if (llu == 0)
    printf ("  *** 05 - 01 OK ***\n");
  else
    printf ("  --- 05 - 01 NG ---\n");

  llu = (unsigned long long int)18000000000000000000 %
        (unsigned long long int)10000000000000000000;
  if (llu == 8000000000000000000)
    printf ("  *** 05 - 02 OK ***\n");
  else
    printf ("  --- 05 - 02 NG ---\n");

  llu = (unsigned long long int)0x7fffffffffffffff %
        (unsigned long long int)0xffffffffffffffff;
  if (llu == 0x7fffffffffffffff)
    printf ("  *** 05 - 03 OK ***\n");
  else
    printf ("  --- 05 - 03 NG ---\n");

  llu = (unsigned long long int)18446744073709551615 %
        (unsigned long long int)18446744073709551615;
  if (llu == 0)
    printf ("  *** 05 - 04 OK ***\n");
  else
    printf ("  --- 05 - 04 NG ---\n");

  llu = (unsigned long long int)9223372036854775808  %
        (unsigned long long int)18446744073709551615;
  if (llu == 0x8000000000000000)
    printf ("  *** 05 - 05 OK ***\n");
  else
    printf ("  --- 05 - 05 NG ---\n");

  llu = (unsigned long long int)9223372036854775808 %
        (unsigned long long int)9223372036854775807 ;
  if (llu == 1)
    printf ("  *** 05 - 06 OK ***\n");
  else
    printf ("  --- 05 - 06 NG ---\n");

  llu = (unsigned long long int)0xffffffffffffffff %
        (unsigned long long int)0xf;
  if (llu == 0)
    printf ("  *** 05 - 07 OK ***\n");
  else
    printf ("  --- 05 - 07 NG ---\n");

  llu = (unsigned long long int)2147483647 %
        (unsigned long long int)2147483648 ;
  if (llu == 2147483647)
    printf ("  *** 05 - 08 OK ***\n");
  else
    printf ("  --- 05 - 08 NG ---\n");

  printf ("***  05  TEST  END    ***\n");
}
