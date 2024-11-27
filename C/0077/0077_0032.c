#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

void *p;

static ATTR(always_inline) ATTR(noinline) int max(int x, int y)
{
#ifdef __GNUC__
  p = __builtin_return_address(0);
#endif
  return x > y ? x : y;
}
int main()
{
#ifdef __GNUC__
  void *q = __builtin_return_address(0);
#endif
  if( max(0,1) != 1 ) puts("NG1");
#ifdef __GNUC__
  if( p==q ) puts("NG3");
#endif
  if( max(1,0) != 1 ) puts("NG2");
#ifdef __GNUC__
  if( p==q ) puts("NG4");
#endif
  puts("OK");
}

