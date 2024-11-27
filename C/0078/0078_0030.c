#include <stdio.h>
#include <limits.h>

#if !defined(__hal)
#define  __int32  int
#endif

#ifndef LLONG_MAX
#define LLONG_MAX (9223372036854775807LL)
#endif
#ifndef LLONG_MIN
#define LLONG_MIN (-9223372036854775807LL-1LL)
#endif

#define INT32_MIN (-2147483647-1)
#define INT32_MAX (2147483647)

#define  sign unsigned 

long long data[] = {
  LLONG_MIN,
  LLONG_MIN+1,
  LLONG_MIN+2,
  LLONG_MIN+3,
  INT32_MIN-1LL,
  INT32_MIN,
  INT32_MIN+1,
  -10,
  -1,
  0,
  1,
  9,
  10,
  INT32_MAX-1,
  INT32_MAX,
  INT32_MAX+1LL,
  LLONG_MAX-3,
  LLONG_MAX-2,
  LLONG_MAX-1,
  LLONG_MAX
  };


void print( sign __int32 i,sign __int32 j,sign __int32 x,sign __int32 y)
{
  printf(" %lld,%lld = %lld , %lld \n",(long long int )i,(long long int )j, (long long int )x ,(long long int )y);
}
int main()
{
    sign __int32  i,j,x,y,z;

    for(i=0;i<20;i++) {
      for(j=0;j<20;j++) {
	x = data[i];
	y = data[j];
	if( y == 0 ) continue;
	z = x % y;
	print(i,j, x % y , z);
      }
    }
}
