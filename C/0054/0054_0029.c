#include <stdio.h>

int main(){
  long long int           lli;
  unsigned long long int  llu;

  printf ("***  01  TEST  START  ***\n");

  llu = (unsigned long long int)18000000000000000000 /
        (unsigned long long int)2;
  if (llu == 9000000000000000000)
    printf ("  *** 01 - 01 OK ***\n");
  else
    printf ("  --- 01 - 01 NG ---\n");

  llu = (unsigned long long int)18000000000000000000 /
        (unsigned long long int)3;
  if (llu == 6000000000000000000)
    printf ("  *** 01 - 02 OK ***\n");
  else
    printf ("  --- 01 - 02 NG ---\n");

  llu = (unsigned long long int)15000000000000000000 /
        (unsigned long long int)5;
  if (llu == 3000000000000000000)
    printf ("  *** 01 - 03 OK ***\n");
  else
    printf ("  --- 01 - 03 NG ---\n");

  llu = (unsigned long long int)18446744073709551615 /
        (unsigned long long int)18446744073709551615;
  if (llu == 1)
    printf ("  *** 01 - 04 OK ***\n");
  else
    printf ("  --- 01 - 04 NG ---\n");

  llu = (unsigned long long int)9223372036854775808  /
        (unsigned long long int)18446744073709551615;
  if (llu == 0)
    printf ("  *** 01 - 05 OK ***\n");
  else
    printf ("  --- 01 - 05 NG ---\n");

  llu = (unsigned long long int)9223372036854775808 /
        (unsigned long long int)9223372036854775807 ;
  if (llu == 1)
    printf ("  *** 01 - 06 OK ***\n");
  else
    printf ("  --- 01 - 06 NG ---\n");

  llu = (unsigned long long int)0xffffffffffffffff /
        (unsigned long long int)0xf;
  if (llu == 0x1111111111111111)
    printf ("  *** 01 - 07 OK ***\n");
  else
    printf ("  --- 01 - 07 NG ---\n");

  llu = (unsigned long long int)2147483647 /
        (unsigned long long int)2147483648 ;
  if (llu == 0)
    printf ("  *** 01 - 08 OK ***\n");
  else
    printf ("  --- 01 - 08 NG ---\n");

  printf ("***  01  TEST  END    ***\n");
}
