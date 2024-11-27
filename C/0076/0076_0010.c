
#include <stdio.h>

typedef signed int test_t;

#define TEST_OP  <

const test_t input[] = {
  0xffffffff,
  0xfffffffe,
  0x80000001,
  0x80000000,
  0x7fffffff,
  1,
  0 };

const int ans[7][7] = {
1,1,1,1,0,0,0,
0,1,1,1,0,0,0,
0,0,1,1,0,0,0,
0,0,0,1,0,0,0,
1,1,1,1,1,1,1,
1,1,1,1,0,1,1,
1,1,1,1,0,0,1,
};

int branch_lt(test_t a,test_t b)
{
  int ans;
  if( a TEST_OP b ) {
    ans = 0;
  }
  else {
    ans = 1;
  }
  return ans;
}

int main()
{
  int i,j;
  for(i=0;i<7;i++) {
    for(j=0;j<7;j++) {
#if DEBUG
      printf("%d ", branch_lt( input[i] , input[j] ));
#else
      if( branch_lt( input[i] , input[j] ) != ans[i][j] ) {
        printf("NG : %x TEST_OP %x = calc(%d), native(%d)\n", input[i],input[j],input[i] - input[j], ans[i][j]);
      } 
#endif
    }
#if DEBUG
    printf("\n");
#endif
  }
  puts("PASS");
  return 0;
}
