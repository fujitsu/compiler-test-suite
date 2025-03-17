















#include <stdio.h>
int main()
{
  if ( sizeof('A') == sizeof(char) &&
       sizeof('AB') == sizeof(int) )
    printf("ok\n");
  else
    printf("ng\n");
}
