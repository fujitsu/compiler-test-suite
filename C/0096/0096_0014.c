#include <stdio.h>

#define STORE_TYPE   double
#define COMP_TYPE    unsigned int

int main() {
  STORE_TYPE   array1[20],ans[20];
  COMP_TYPE     idx;
  int i;
  
  for (i=0; i<20; i++) {
    array1[i] = (STORE_TYPE)i;
    ans[i] = 0.0;
  }
  
  for (idx=0; idx<20; idx++) {
    if (idx < 10) {
      ans[idx] = array1[idx];
    }
  }
  printf("%lf\n",ans[5]);
  return 1;
}


