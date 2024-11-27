#include <stdlib.h>
#include <stdio.h>

static void  error_print(double log051[], double res[]);
static void init(double log051[]);
int main(){
  long int  i;
  double    log051[10];
  double    res1[10]={1,1,1,1,1,0,0,0,0,0};
  double    res2[10]={1,1,1,1,0,0,0,0,0,0};

  for(i = 0; i < 10; i++){
    if(i <= 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res1[i]) {
      printf("##  TEST 1 NG ##\n");
      error_print(log051,res1);
      exit(EXIT_FAILURE);
    }
  }
  
  printf(" ##  OK ##\n");
}

static void  error_print(double log051[], double res[]) {
  int i;
  for(i = 0; i < 10; i++){
    printf("log051[%d] = %3f res[%d] = %3f \n",
	   i, log051[i],i,res[i]);
  }
}
    
static void init(double log051[]) {
  int i;
  for(i = 0; i < 10; i++) log051[i] = -1;
}

