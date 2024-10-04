#include <stdio.h>

int main(){
  long long int           lli;
  unsigned long long int  llu;

  printf ("***  03  TEST  START  ***\n");

  llu = (unsigned long long int)0x1234567890123456 <<
        (unsigned long long int)0;
  if (llu == 0x1234567890123456)
    printf ("  *** 03 - 01 OK ***\n");
  else
    printf ("  --- 03 - 01 NG ---\n");

  llu = (unsigned long long int)0x1234567890123456 <<
        (unsigned long long int)32;
  if (llu == 0x9012345600000000)
    printf ("  *** 03 - 02 OK ***\n");
  else
    printf ("  --- 03 - 02 NG ---\n");

  llu = (unsigned long long int)0xfff00000fff00000 <<
        (unsigned long long int)16;
  if (llu == 0x0000fff000000000)
    printf ("  *** 03 - 03 OK ***\n");
  else
    printf ("  --- 03 - 03 NG ---\n");

  llu = (unsigned long long int)0x1234567890123456 <<
        (unsigned long long int)48;
  if (llu == 0x3456000000000000)
    printf ("  *** 03 - 04 OK ***\n");
  else
    printf ("  --- 03 - 04 NG ---\n");

  llu = (unsigned long long int)9223372036854775807 <<
        (unsigned long long int)63;
  if (llu == 0x8000000000000000)
    printf ("  *** 03 - 05 OK ***\n");
  else
    printf ("  --- 03 - 05 NG ---\n");

  lli = (long long int)0x1234567890123456 <<
        (long long int)0;
  if (lli == 0x1234567890123456)
    printf ("  *** 03 - 06 OK ***\n");
  else
    printf ("  --- 03 - 06 NG ---\n");

  lli = (long long int)0xffff0000ffff0000 <<
        (long long int)16;
  if (lli == 0x0000ffff00000000)
    printf ("  *** 03 - 07 OK ***\n");
  else
    printf ("  --- 03 - 07 NG ---\n");

  lli = (long long int)0x1234567890123456 <<
        (long long int)32;
  if (lli == 0x9012345600000000)
    printf ("  *** 03 - 08 OK ***\n");
  else
    printf ("  --- 03 - 08 NG ---\n");

  lli = (long long int)0x1234567890123456 <<
        (long long int)48;
  if (lli == 0x3456000000000000)
    printf ("  *** 03 - 09 OK ***\n");
  else
    printf ("  --- 03 - 09 NG ---\n");

  lli = (long long int)9223372036854775807 <<
        (long long int)63;
  if (lli == 0x8000000000000000)
    printf ("  *** 03 - 10 OK ***\n");
  else
    printf ("  --- 03 - 10 NG ---\n");

  printf ("***  03  TEST  END    ***\n");
}
