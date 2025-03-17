#include <stdlib.h>
#include <stdio.h>
#include <math.h>

static struct tag {
  long long a:8 ;
};
int main()
{
  struct tag s;
  if(s.a);
exit (0);
}
