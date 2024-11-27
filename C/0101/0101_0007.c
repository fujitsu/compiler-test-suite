#include <stdio.h>

float result1[30];
float result2[30];

void test_1(int n)
{
  int i;
  for(i=10;i<=n;i++) {
    result2[i] = result2[i] + 2.0;
    if( i>(n-1) ) {
      result2[i] = result2[i] + 3.0;
    }
  }
}

void test_2(int n)
{
  int i;
  for(i=n;i>=10;i--) {
    result1[i] = result1[i] + 2.0;
    if( i>(n-1) ) {
      result1[i] = result1[i] + 3.0;
    }
  }
}

char ans[30] = { 0,0,0,0,0,0,0,0,0,0,
                 2,2,2,2,2,2,2,2,2,5,
                 0,0,0,0,0,0,0,0,0,0 };
int main()
{
  int i;
  test_1(19);
  test_2(19);
  for( i=0;i<30;i++ ) {
    if(ans[i]!=result1[i]) {
      printf("NG1 %d %d %d\n",(int)i,(int)ans[i],(int)result1[i]);
    }
    if(ans[i]!=result2[i]) {
      printf("NG2 %d %d %d\n",(int)i,(int)ans[i],(int)result2[i]);
    }
  }
  puts("PASS");
}
