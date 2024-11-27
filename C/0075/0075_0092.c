#include <stdio.h>
#include <string.h>
int main()
{
#define p(x)       "x"

#if defined(__STDC__) && __STDC__ == 0
  if (!strcmp("s", p(s))) {
    printf("-Xt ok : -Xa ng\n");
  } else {
    printf("-Xa ok : -Xt ng\n");
  }
#elif __STDC__ == 1
  if (!strcmp("x", p(s))) {
    printf("-Xa ok : -Xt ng\n");		
  } else {
    printf("ng\n");
  }
#endif
}
