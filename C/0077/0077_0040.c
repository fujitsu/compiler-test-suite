#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

struct TAG {
  double data;
};
struct TAG x = { 0 };
struct TAG y = { 1 };

static ATTR(always_inline) struct TAG max(x)
struct TAG x;
{
  struct TAG y = {0};
  return x.data > y.data ? x : y;
}

int count=0;
int main()
{
   if( max(x,y).data != 0 ) count++;
   if( max(y,x).data != 1 ) count++;
   puts("OK");
}

