#include <stdio.h>
int main()
{
  short s;
  short &sr=s;

  if ( sizeof (char&) == sizeof (char) &&
       sizeof (sr) == sizeof (short))
    printf("ok\n");
  else
    printf("ng\n");
}
