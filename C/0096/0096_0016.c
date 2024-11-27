#include <stdio.h>

#define STORE_TYPE   float
#define COMP_TYPE    unsigned int

COMP_TYPE nnn = 10;

int main() {
  STORE_TYPE   array1[20],ans[20];
  COMP_TYPE     idx;
  int i;
  
  for (i=0; i<20; i++) {
    array1[i] = (STORE_TYPE)i;
    ans[i] = 0.0;
  }
  
  for (idx=0; idx<20; idx++) {
    if (idx < nnn) {
      ans[idx] = array1[idx];
    }
  }
  printf("%f\n",ans[5]);
  return 1;
}
