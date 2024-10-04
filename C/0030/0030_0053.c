#include <stdio.h>
struct {
  int i : 1;
} a = {1};
int main()
{
#ifdef __GNUC__
  printf("%d\n", -(a.i) );
#else
  printf("%d\n", a.i);
#endif
}
