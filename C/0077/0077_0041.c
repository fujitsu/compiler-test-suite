#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

struct TAG {
  double data;
};
struct TAG x = { 1 };
struct TAG y = { 1 };

static ATTR(always_inline) struct TAG max(x,y)
struct TAG x, y;
{
  return x.data > y.data ? x : y;
}

int count = 0;
int main()
{
   if( max(x).data != 1 ) count++;
   if( max(y).data != 1 ) count++;
   puts("OK");
}

