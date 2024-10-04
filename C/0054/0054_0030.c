#include <stdio.h>

int main(){
  long long int           lli;
  unsigned long long int  llu;

  printf ("***  02  TEST  START  ***\n");

  llu = (unsigned long long int)9000000000000000000 *
        (unsigned long long int)2;
  if (llu == 18000000000000000000)
    printf ("  *** 02 - 01 OK ***\n");
  else
    printf ("  --- 02 - 01 NG ---\n");

  llu = (unsigned long long int)6000000000000000000 *
        (unsigned long long int)3;
  if (llu == 18000000000000000000)
    printf ("  *** 02 - 02 OK ***\n");
  else
    printf ("  --- 02 - 02 NG ---\n");

  llu = (unsigned long long int)3000000000000000000 *
        (unsigned long long int)5;
  if (llu == 15000000000000000000)
    printf ("  *** 02 - 03 OK ***\n");
  else
    printf ("  --- 02 - 03 NG ---\n");

  llu = (unsigned long long int)1 *
        (unsigned long long int)18446744073709551615;
  if (llu == 18446744073709551615)
    printf ("  *** 02 - 04 OK ***\n");
  else
    printf ("  --- 02 - 04 NG ---\n");

  llu = (unsigned long long int)9223372036854775808 *
        (unsigned long long int)0;
  if (llu == 0)
    printf ("  *** 02 - 05 OK ***\n");
  else
    printf ("  --- 02 - 05 NG ---\n");

  llu = (unsigned long long int)0x0000000080000000 *
        (unsigned long long int)0x00000000ffffffff ;
  if (llu == 0x7fffffff80000000)
    printf ("  *** 02 - 06 OK ***\n");
  else
    printf ("  --- 02 - 06 NG ---\n");

  llu = (unsigned long long int)0x1111111111111111 *
        (unsigned long long int)0xf;
  if (llu == 0xffffffffffffffff)
    printf ("  *** 02 - 07 OK ***\n");
  else
    printf ("  --- 02 - 07 NG ---\n");

  llu = (unsigned long long int)0x0000000100000000 *
        (unsigned long long int)0x00000000ffffffff;
  if (llu == 0xffffffff00000000)
    printf ("  *** 02 - 08 OK ***\n");
  else
    printf ("  --- 02 - 08 NG ---\n");

  llu = (unsigned long long int)0x0000000180000000 *
        (unsigned long long int)0x0000000080000000;
  if (llu == 0xc000000000000000)
    printf ("  *** 02 - 09 OK ***\n");
  else
    printf ("  --- 02 - 09 NG --- %llx\n",llu);

  printf ("***  02  TEST  END    ***\n");
}
