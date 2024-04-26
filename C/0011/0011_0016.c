#include  <stdio.h>

#include <string.h>
int main()
{
    static char a[10] = "123456789";
    static char x[10] = "123456789";
    char b[10];
    int  c;

    memset (b, 0x00, 9);
    if (b[0]==0 && b[1]==0 && b[2]==0 &&
        b[3]==0 && b[4]==0 && b[5]==0 &&
        b[6]==0 && b[7]==0 && b[8]==0)
      printf ("***** memset ok *****\n");
    else
      printf ("***** memset ng *****\n");

    memcpy (b, a, 9);
    if (b[0]==a[0] && b[1]==a[1] && b[2]==a[2] &&
        b[3]==a[3] && b[4]==a[4] && b[5]==a[5] &&
        b[6]==a[6] && b[7]==a[7] && b[8]==a[8])
      printf ("***** memcpy ok *****\n");
    else
      printf ("***** memcpy ng *****\n");

    c = memcmp (a, b, 9);
    if (c==0)
      printf ("***** memcmp ok *****\n");
    else
      printf ("***** memcmp ng *****\n");

    if (*(char *)memchr (a, '7', 9)=='7')
      printf ("***** memchr ok *****\n");
    else
      printf ("***** memchr ng *****\n");

    a[9] = 0x00;
    b[9] = 0x00;
    x[9] = 0x00;

    c = strcmp (a, x);
    if (c==0)
      printf ("***** strcmp ok *****\n");
    else
      printf ("***** strcmp ng *****\n");

    strcpy (b, x);
    if (b[0]==x[0] && b[1]==x[1] && b[2]==x[2] &&
        b[3]==x[3] && b[4]==x[4] && b[5]==x[5] &&
        b[6]==x[6] && b[7]==x[7] && b[8]==x[8])
      printf ("***** strcpy ok *****\n");
    else
      printf ("***** strcpy ng *****\n");

    c = strlen (a);
    if (c==9)
      printf ("***** strlen ok *****\n");
    else
      printf ("***** strlen ng *****\n");
}
