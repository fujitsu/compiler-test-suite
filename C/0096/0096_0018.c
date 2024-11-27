#include <stdio.h>

#define STORE_TYPE1   float
#define STORE_TYPE2   int
#define COMP_TYPE     unsigned int

int main() {
  STORE_TYPE1   array1[20],ans1[20];
  STORE_TYPE2   array2[20],ans2[20];
  COMP_TYPE     idx;
  int i;
  
  for (i=0; i<20; i++) {
    array1[i] = (STORE_TYPE1)i;
    array2[i] = (STORE_TYPE2)i;
    ans1[i] = 0.0;
    ans2[i] = 0;
  }
  
  for (idx=0; idx<20; idx++) {
    if (idx < 10) {
      ans1[idx] = array1[idx];
      ans2[idx] = array2[idx];
    }
  }
  printf("%f\n",ans1[5]);
  printf("%d\n",ans2[5]);
  return 1;
}


