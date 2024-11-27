#include <stdio.h>

#include <setjmp.h>

#ifdef __GNUC__
#define ATTR(x)  __attribute__((x))
#else
#define ATTR(x)
#endif

jmp_buf env;

static ATTR(always_inline) int max(int x, int y)
{
  if( x==0 && y==0 ) 
    longjmp(env,1);
  return x > y ? x : y;
}

static ATTR(always_inline) int try_max(int x, int y)
{
  if(setjmp(env)==0) {
    return max(x,y);
  } else {
    puts("OK");
    return 0;
  }
}
int main()
{
   if( try_max(0,1) != 1 ) puts("NG1");
   if( try_max(1,0) != 1 ) puts("NG2");
   if( try_max(0,0) != 0 ) puts("NG3");
}

