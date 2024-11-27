
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#if defined(__sparc)
#if defined(__linux)
#include <float.h>
#else
#include <ieeefp.h>
#endif
#else
#include <float.h>
#endif


#define max(a,b)  ((a) > (b) ? (a) : (b))
#define min(a,b)  ((a) < (b) ? (a) : (b))

double soft_min(double x,double y)
{
  if( x < y ) return x;
  return y;
}

long long result81[10][10] = {
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x7ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x7ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x7ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0xbff0000000000000LL,
0x800199999999999aLL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x199999999999aLL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x199999999999aLL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x8000000000000000LL,
0x800199999999999aLL,
0x8000000000000000LL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x8000000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x0LL,
0x800199999999999aLL,
0x0LL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x0LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0x3ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL
};

long long result82[10][10] = {
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
0x7ff0000000000001LL,
#if defined(__sparc)
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
0x7fffffffffffffffLL,
#elif defined(__aarch64__)
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
0x7ff8000000000000LL,
#else
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
0xfff8000000000000LL,
#endif
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0xfff0000000000000LL,
0x7ff0000000000000LL,
0x7ff0000000000000LL,
0xfff0000000000000LL,
0x7ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL,
0x800199999999999aLL,
0x800199999999999aLL,
0xfff0000000000000LL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0x800199999999999aLL,
0xbff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x199999999999aLL,
0xfff0000000000000LL,
0x199999999999aLL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x199999999999aLL,
0x8000000000000000LL,
0x8000000000000000LL,
0xfff0000000000000LL,
0x8000000000000000LL,
0x800199999999999aLL,
0x8000000000000000LL,
0x8000000000000000LL,
0x8000000000000000LL,
0xbff0000000000000LL,
0x8000000000000000LL,
0x0LL,
0x0LL,
0xfff0000000000000LL,
0x0LL,
0x800199999999999aLL,
0x0LL,
0x0LL,
0x0LL,
0xbff0000000000000LL,
0x0LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xfff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0xbff0000000000000LL,
0x3ff0000000000000LL,
0x3ff0000000000000LL,
0xfff0000000000000LL,
0x3ff0000000000000LL,
0x800199999999999aLL,
0x199999999999aLL,
0x8000000000000000LL,
0x0LL,
0xbff0000000000000LL,
0x3ff0000000000000LL
};
int main()
{
  int i,j,pass=0;

  double result1[10][10];
  double result2[10][10];
  double answer1[10][10];
  double answer2[10][10];
  double test_data[10] ;
  double zero =0.0;
  double one  =1.0;
  double snan;
  *(long long *)&snan = 0x7ff0000000000001LL;
  test_data[0] = (snan);
  test_data[1] = (zero/zero);
  test_data[2] = (-DBL_MAX*10.0);
  test_data[3] = (DBL_MAX*10.0);
  test_data[4] = (-DBL_MIN/10.0);
  test_data[5] = (DBL_MIN/10.0);
  test_data[6] = (-zero);
  test_data[7] = ( zero);
  test_data[8] = (-1.0);
  test_data[9] = (1.0);

  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      result1[i][j] = min( test_data[i] , test_data[j] ) ;
      result2[i][j] = min( test_data[j] , test_data[i] ) ;
      answer1[i][j] = soft_min( test_data[i] , test_data[j] ) ;
      answer2[i][j] = soft_min( test_data[j] , test_data[i] ) ;
    }
  }
  for(i=0;i<10;i++) {
    for(j=0;j<10;j++) {
      long long res1 = *(long long *)(&result1[i][j]);
      long long res2 = *(long long *)(&result2[i][j]);
      long long ans1 = *(long long *)(&answer1[i][j]);
      long long ans2 = *(long long *)(&answer2[i][j]);
      if(res1!=res2) {

      }
      if( res1 != ans1 ) {
        printf("NG2 (%d,%d)\n",i,j);
        exit(1);
      }
      if( res2 != ans2 ) {
        printf("NG3 (%d,%d)\n",i,j);
        exit(1);
      }
      if( res1 != result81[i][j] ) {
        printf("NG4 (%d,%d) = calc=%llx,base=%llx\n",i,j,res1,result81[i][j]);
        exit(1);
      }
      if( res2 != result82[i][j] ) {
        printf("NG5 (%d,%d) = calc=%llx,base=%llx\n",i,j,res2,result82[i][j]);
        exit(1);
      }

    }
  }
  puts("PASS");
}

