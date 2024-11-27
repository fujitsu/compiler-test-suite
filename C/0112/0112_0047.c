#include <stdlib.h>
#include <stdio.h>

static void  error_print(long int log051[], long int res[]);
static void init(long int log051[]);
int main(){
  long int  i, log051[10];
  long int  res1[10]={1,1,1,1,1,0,0,0,0,0};
  long int  res2[10]={1,1,1,1,0,0,0,0,0,0};

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
  init(log051);

  for(i = 0; i < 10; i++){
    if(i < 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res2[i]) {
      printf("##  TEST 2 NG ##\n");
      error_print(log051,res2);
      exit(EXIT_FAILURE);
    }
  }
  
  printf(" ##  OK ##\n");
}

static void  error_print(long int log051[], long int res[]) {
  int i;
  for(i = 0; i < 10; i++){
    printf("log051[%d] = %3ld res[%d] = %3ld \n",
	   i, log051[i],i,res[i]);
  }
}
    
static void init(long int log051[]) {
  int i;
  for(i = 0; i < 10; i++) log051[i] = -1;
}

