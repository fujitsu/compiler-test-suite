
//This test assumes that #pragma parallel omp is ignored.
#include <stdio.h>

#define ELM_MAX 2


int main(void) {

  int flag =0;
  
  unsigned int k,l;
  unsigned int step3,step4;
  unsigned int ans=4;
  unsigned int res=0;

  step3=1;
  step4=1;

  printf("loop 01 \n");

#pragma parallel omp for collapse(2) reduction(+:res) ordered
  for (k = 3; k > 1 ; k -= step3 ){
    for (l = 3; l > 1 ; l -= step4 ){
      res += 1;
      printf("%d %d \n" ,k,l);
    }
  }


  if(res != ans ){
    flag += 1; printf("flag1 %d \n",res);
  } 
  else {
    printf("OK \n");
  }
  
}
