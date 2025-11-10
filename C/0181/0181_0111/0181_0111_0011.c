#include <stdio.h>


 

static void sub(int cond);
static void sub(int cond) {
  double a[1000], b[1000], c[1000];
  double total=0,ans;
  ans = 9000.0;
  int i;

  for(i=0; i<1000; ++i) {
    a[i]=1;
    b[i]=3;
    c[i]=2;
  }

  for(i=0; i<1000; ++i) {
    a[i] = 1 + a[i];
    if(cond > 500) {
      b[i] = b[i] / 2;
    }
    c[i] = c[i] * 2;
  }

  for(i=0; i<1000; ++i) {
    total += a[i]+b[i]+c[i];
  }

  if(total == ans) {
    printf ("OK \n");
  } else {
    printf ("NG : ans = %lf , res = %lf \n",ans, total);
  }

}

int lto_sub_12(void) {
  sub(8);
  return 0;
}
