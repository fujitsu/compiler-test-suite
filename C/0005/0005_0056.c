#include <stdio.h>
#include <float.h>
#if defined __cplusplus
#include <iostream>
#include <iomanip>
#endif

int main(void){

#if defined (__GNUC__) 
  if(__FLT_DENORM_MIN__  == 1.40129846e-45F){
    printf("ok\n");    
  } else{
    printf("ng\n");
  }
  
  if(__DBL_DENORM_MIN__  == 4.9406564584124654e-324){
    printf("ok\n");    
  } else{
    printf("ng\n");
  }
  
#if defined(__aarch64__)
  if(__LDBL_DENORM_MIN__ == 6.47517511943802511092443895822764655e-4966L){
    printf("ok\n");
  } else{
    printf("ng\n");
  }
#else
  if(__LDBL_DENORM_MIN__ == 3.64519953188247460252840593361942e-4951L){
    printf("ok\n");
  } else{
    printf("ng\n");
  }
#endif
#endif
  return 0;
}
