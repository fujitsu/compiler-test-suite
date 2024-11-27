#include <stdio.h>

#define STORE_TYPE   float
#define COMP_TYPE    unsigned short int

int main() {
  STORE_TYPE   array1[20],ans[20];
  COMP_TYPE    idx;
  int i;
  
  for (i=0; i<20; i++) {
    array1[i] = (STORE_TYPE)i;
    ans[i] = 0.0;
  }

  i=0;
  for (idx=0; idx<20; idx++) {
    if (i < 10) {
      ans[i] = array1[i];
    }
    i++;
  }
  printf("%f\n",ans[5]);
  return 1;
}


