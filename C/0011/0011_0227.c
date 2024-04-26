#include  <stdio.h>

#include <string.h>
  static char  flont[] = "define";
  static char  back[] = "wrongs";
  static char  clear[] = "      ";
  static int   mid = 'f';
  static int   n = 6;
int main()
{
  int        a,b;
  char        *s;

  printf("********** TEST START **********\n");

     s=(char *)memchr(flont,mid,n);
  if (memcmp(s,flont+2,n) == 0)
      printf("***** 01 ***** O   K *****\n");
  else
      printf("***** 01 ***** N   G *****\n");

     memset(back,' ',6);
     memcpy(back,flont,6);
     a=strcmp(flont,back);
  if (a == 0)
      printf("***** 02 ***** O   K *****\n");
  else
      printf("***** 02 ***** N   G *****\n");

     strcpy(clear,flont);
  if (memcmp(clear,flont,n) == 0)
      printf("***** 03 ***** O   K *****\n");
  else
      printf("***** 03 ***** N   G *****\n");

     b=strlen(flont);
  if (b == 6)
      printf("***** 04 ***** O   K *****\n");
  else
      printf("***** 04 ***** N   G *****\n");


  printf("********** TEST  END **********\n");
}
