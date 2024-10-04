#include <stdio.h>

int main(){
  long long int           lli;
  unsigned long long int  llu;

  printf ("***  04  TEST  START  ***\n");

  llu = (unsigned long long int)0x8012345612345678 >>
        (unsigned long long int)0;
  if (llu == 0x8012345612345678)
    printf ("  *** 04 - 01 OK ***\n");
  else
    printf ("  --- 04 - 01 NG ---\n");

  llu = (unsigned long long int)0xffff0000ffff0000 >>
        (unsigned long long int)16;
  if (llu == 0x0000ffff0000ffff)
    printf ("  *** 04 - 02 OK ***\n");
  else
    printf ("  --- 04 - 02 NG ---\n");

  llu = (unsigned long long int)0x8234567890123456 >>
        (unsigned long long int)32;
  if (llu == 0x0000000082345678)
    printf ("  *** 04 - 03 OK ***\n");
  else
    printf ("  --- 04 - 03 NG ---\n");

  llu = (unsigned long long int)0x1234567890123456 >>
        (unsigned long long int)48;
  if (llu == 0x0000000000001234)
    printf ("  *** 04 - 04 OK ***\n");
  else
    printf ("  --- 04 - 04 NG ---\n");

  llu = (unsigned long long int)9223372036854775807 >>
        (unsigned long long int)63;
  if (llu == 0)
    printf ("  *** 04 - 05 OK ***\n");
  else
    printf ("  --- 04 - 05 NG ---\n");

  lli = (long long int)0xf234567890123456 >>
        (long long int)0;
  if (lli == 0xf234567890123456)
    printf ("  *** 04 - 06 OK ***\n");
  else
    printf ("  --- 04 - 06 NG ---\n");

  lli = (long long int)0xffff0000ffff0000 >>
        (long long int)16;
  if (lli == 0xffffffff0000ffff)
    printf ("  *** 04 - 07 OK ***\n");
  else
    printf ("  --- 04 - 07 NG ---\n");

  lli = (long long int)0xf234567890123456 >>
        (long long int)32;
  if (lli == 0xfffffffff2345678)
    printf ("  *** 04 - 08 OK ***\n");
  else
    printf ("  --- 04 - 08 NG ---\n");

  lli = (long long int)0xe234567890123456 >>
        (long long int)48;
  if (lli == 0xffffffffffffe234)
    printf ("  *** 04 - 09 OK ***\n");
  else
    printf ("  --- 04 - 09 NG ---\n");

  lli = (long long int)0xf372036854775807 >>
        (long long int)63;
  if (lli == 0xffffffffffffffff)
    printf ("  *** 04 - 10 OK ***\n");
  else
    printf ("  --- 04 - 10 NG ---\n");

  printf ("***  04  TEST  END    ***\n");
}
