
#include <stdio.h>
#include <math.h>

typedef double test_t ;

#define D2POW2    (2L*2L)
#define D2POW4    (D2POW2*D2POW2)
#define D2POW8    (D2POW4*D2POW4)
#define D2POW16   (D2POW8*D2POW8)
#define D2POW18   (D2POW8*D2POW8*2*2)
#define D2POW24   (D2POW16*D2POW8)
#define D2POW30   (D2POW16*D2POW8*2*2*2*2*2*2)
#define D2POW31   (D2POW16*D2POW8*2*2*2*2*2*2*2)
#define D2POW32   (D2POW16*D2POW16)
#define D2POW50   (D2POW32*D2POW18)
#define D2POW51   (D2POW50*2)
#define D2POW52   (D2POW51*2)
#define D2POW53   (D2POW52*2)
#define D2POW54   (D2POW53*2)

const test_t input[] = {
0.0, 
1.0, 
1.1, 
1.5, 
1.9, 
2.0, 
2.4, 
2.5, 
2.6, 
3.0, 

D2POW30+1.0, 
D2POW31+1.0, 
D2POW32+1.0, 
D2POW30+1.5, 
D2POW31+1.5, 
D2POW32+1.5, 
D2POW30+0.5, 
D2POW31+0.5, 
D2POW32+0.5, 

D2POW50+1.0, 
D2POW51+1.0, 
D2POW52+1.0, 
D2POW53+1.0, 
D2POW54+1.0, 
D2POW50+1.5, 
D2POW51+1.5, 
D2POW52+1.5, 
D2POW53+1.5, 
D2POW54+1.5, 
D2POW50+0.5, 
D2POW51+0.5, 
D2POW52+0.5, 
D2POW53+0.5, 
D2POW54+0.5, 
D2POW50+1.1, 
D2POW51+1.1, 
D2POW52+1.1, 
D2POW53+1.1, 
D2POW54+1.1, 
D2POW50+0.1, 
D2POW51+0.1, 
D2POW52+0.1, 
D2POW53+0.1, 
D2POW54+0.1, 
D2POW50+1.7, 
D2POW51+1.7, 
D2POW52+1.7, 
D2POW53+1.7, 
D2POW54+1.7, 
D2POW50+0.7, 
D2POW51+0.7, 
D2POW52+0.7, 
D2POW53+0.7, 
D2POW54+0.7, 

-1.0, 
-1.1, 
-1.5, 
-1.9, 
-2.0, 
-2.4, 
-2.5, 
-2.6, 
-3.0, 

D2POW30+1.0, 
D2POW31+1.0, 
D2POW32+1.0, 
D2POW30+1.5, 
D2POW31+1.5, 
D2POW32+1.5, 
D2POW30+0.5, 
D2POW31+0.5, 
D2POW32+0.5, 

-D2POW50-1.0, 
-D2POW51-1.0, 
-D2POW52-1.0, 
-D2POW53-1.0, 
-D2POW54-1.0, 
-D2POW50-1.5, 
-D2POW51-1.5, 
-D2POW52-1.5, 
-D2POW53-1.5, 
-D2POW54-1.5, 
-D2POW50-0.5, 
-D2POW51-0.5, 
-D2POW52-0.5, 
-D2POW53-0.5, 
-D2POW54-0.5, 
-D2POW50+1.1, 
-D2POW51+1.1, 
-D2POW52+1.1, 
-D2POW53+1.1, 
-D2POW54+1.1, 
-D2POW50+0.1, 
-D2POW51+0.1, 
-D2POW52+0.1, 
-D2POW53+0.1, 
-D2POW54+0.1, 
-D2POW50+1.7, 
-D2POW51+1.7, 
-D2POW52+1.7, 
-D2POW53+1.7, 
-D2POW54+1.7, 
-D2POW50+0.7, 
-D2POW51+0.7, 
-D2POW52+0.7, 
-D2POW53+0.7, 
-D2POW54+0.7,
  };

test_t test(test_t (*func)(), test_t in)
{
  return func(in);
}

int main()
{
  int n = sizeof(input)/sizeof(test_t);
  int i;
  test_t tin;
  test_t calc;
  test_t ans;

  for(i=0;i<n;i++) {
    tin  = input[i];
    ans  = test(trunc, tin);
    calc = trunc(tin);
    if( ans != calc ) {
      puts("NG");
    }
  }
  puts("PASS");
  return 0;
}
