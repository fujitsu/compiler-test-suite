#include <stdio.h>



char *
rindex(s, c)
register char *s, c;
{
  char *p;
  for (p =  0 ; *s; s++)
    if (*s == c)
      p = s;
  return(p);
}
int main()
{
  char msg[] = "***** 28 - 01 ***** O   K *****\n";

  printf("********** 28 TEST START **********\n");

  if( rindex(msg,'O') == &msg[20] )
    printf(msg);
  else
    printf("***** 28 - 01 ***** N   G *****\n");

  printf("********** 28 TEST  END  **********\n");
}
