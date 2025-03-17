
















#include <stdio.h>
int main()
{
  static char str[5] = "abcd"; 
  char *p = str;

  if ( *p++ == 'a' && *p++ == 'b' && *p++ == 'c' &&
       *p++ == 'd' && *p == '\0' )
    printf("ok\n");
  else
    printf("ng\n");
}
