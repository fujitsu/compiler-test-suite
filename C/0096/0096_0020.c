#include <stdio.h>

#define STORE_TYPE1   float
#define STORE_TYPE2   double
#define STORE_TYPE3   long double
#define COMP_TYPE    unsigned int

int main() {
  STORE_TYPE1   array1[20],ans1[20];
  STORE_TYPE2   array2[20],ans2[20];
  STORE_TYPE3   array3[20],ans3[20];
  COMP_TYPE     idx;
  int i;
  
  for (i=0; i<20; i++) {
    array1[i] = (STORE_TYPE1)i;
    array2[i] = (STORE_TYPE2)i;
    array3[i] = (STORE_TYPE2)i;
    ans1[i] = 0.0;
    ans2[i] = 0.0;
    ans3[i] = 0.0;
  }
  
  for (idx=0; idx<20; idx++) {
    if (idx < 10) {
      ans1[idx] = array1[idx];
      ans2[idx] = array2[idx];
      ans3[idx] = array3[idx];
    }
  }
  printf("%f\n",ans1[5]);
  printf("%lf\n",ans2[5]);
  printf("%Lf\n",ans3[5]);
  return 1;
}


