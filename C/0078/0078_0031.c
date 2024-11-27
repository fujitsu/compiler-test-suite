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

#define  oper %

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
    sign __int32  i,j=0,x,z;

    for(i=0;i<20;i++) {
      x = data[i];
      z = x oper (sign __int32) (LLONG_MIN+1);
      print(i,1, z, x oper (sign __int32) (LLONG_MIN+1) );               
      z = x oper (sign __int32) (LLONG_MIN+2);
      print(i,2, z, x oper (sign __int32) (LLONG_MIN+2) );               
      z = x oper (sign __int32) (LLONG_MIN+3);
      print(i,3, z, x oper (sign __int32) (LLONG_MIN+3) );               
      z = x oper (sign __int32) (INT32_MIN-1LL);
      print(i,4, z, x oper (sign __int32) (INT32_MIN-1LL) );               
      z = x oper (sign __int32) (INT32_MIN);
      print(i,5, z, x oper (sign __int32) INT32_MIN );               
      z = x oper (sign __int32) (INT32_MIN+1);
      print(i,6, z, x oper (sign __int32) (INT32_MIN+1) );               
      z = x oper (sign __int32) (-10);
      print(i,7, z, x oper (sign __int32) (-10) );               
      z = x oper (sign __int32) (-1);
      print(i,8, z, x oper (sign __int32) (-1) );               
      z = x oper (sign __int32) (1);
      print(i,10, z, x oper (sign __int32) (1) );               
      z = x oper (sign __int32) (9);
      print(i,11, z, x oper (sign __int32) (9) );               
      z = x oper (sign __int32) (10);
      print(i,12, z, x oper (sign __int32) (10) );               
      z = x oper (sign __int32) (INT32_MAX-1);
      print(i,13, z, x oper (sign __int32) (INT32_MAX-1) );               
      z = x oper (sign __int32) (INT32_MAX);
      print(i,14, z, x oper (sign __int32) (INT32_MAX) );               
      z = x oper (sign __int32) (INT32_MAX+1LL);
      print(i,15, z, x oper (sign __int32) (INT32_MAX+1LL) );               
      z = x oper (sign __int32) (LLONG_MAX-3);
      print(i,16, z, x oper (sign __int32) (LLONG_MAX-3) );               
      z = x oper (sign __int32) (LLONG_MAX-2);
      print(i,17, z, x oper (sign __int32) (LLONG_MAX-2) );               
      z = x oper (sign __int32) (LLONG_MAX-1);
      print(i,18, z, x oper (sign __int32) (LLONG_MAX-1) );               
      z = x oper (sign __int32) (LLONG_MAX);
      print(i,19, z, x oper (sign __int32) (LLONG_MAX) );               
    }
}
