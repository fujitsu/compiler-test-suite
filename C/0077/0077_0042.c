#include <stdio.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

struct TAG {
  int data;
};

static ATTR(always_inline) int max(x,y)
int x, y;
{
    return x > y ? x : y;
}

double x = 1.0;
double y = 2.0;

int count = 0;
int main()
{
   if( max(x,y) != 0 ) count++;
   if( max(x,y) != 1 ) count++;
   puts("OK");
}

