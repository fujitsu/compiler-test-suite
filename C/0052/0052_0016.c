#include <stdio.h>



int main()
{
  char c;           unsigned char uc;
  short s;          unsigned short us;
  int  i;           unsigned int ui;
  long l;           unsigned long ul;

  printf("********** 17 TEST START **********\n");

    i = c;          i = uc;
    i = s;          i = us;
    i = i;          i = ui;
    i = l;          i = ul;
    c = i;          uc= i;
    s = i;          us= i;
    i = i;          ui= i;
    l = i;          ul= i;

  uc = 127;
  us = 32768;
  s  = 32767;
#ifdef __STDC__
    i = (signed char)uc;
#else
    i = (char)uc;
#endif
  if (i == 127)
      printf("***** 17 - 01 ***** O   K *****\n");
    else
      printf("***** 17 - 01 ***** N   G *****\n");

    i = (short      )us;

  if (i == -32768)
      printf("***** 17 - 02 ***** O   K *****\n");
    else
      printf("***** 17 - 02 ***** N   G *****\n");

    i = (unsigned short)s;

  if (i == 32767)
      printf("***** 17 - 03 ***** O   K *****\n");
    else
      printf("***** 17 - 03 ***** N   G *****\n");

  printf("********** 17 TEST  END  **********\n");
}
