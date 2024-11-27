#include <stdlib.h>
#include <stdio.h>

static void  error_print(long int log051[], long int res[]);
static void init(long int log051[]);
int main(){
  long int  i, log051[10],log052[10];
  long int  res1[10]={0,0,0,0,0,-1,-1,-1,-1,-1};
  long int  res2[10]={-1,-1,-1,-1,1,1,1,1,1,1};
  long int  res3[10]={1,1,1,1,0,0,0,0,0,1};
  long int  res4[10]={0,0,0,0,-1,-1,-1,-1,-1,-1};
  init(log051);

  for(i = 0; i < 10; i++){
    if(i <= 4){
      log051[i] = 0;
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
  init(log052);

  for(i = 0; i < 10; i++){
    if(i < 4){
      log052[i] = 0L;
    }else{
      log051[i] = 1L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res2[i]) {
      printf("##  TEST 21 NG ##\n");
      error_print(log051,res2);
      exit(EXIT_FAILURE);
    }
  }
  for(i = 0; i < 10; i++){
    if (log052[i] != res4[i]) {
      printf("##  TEST 22 NG ##\n");
      error_print(log052,res4);
      exit(EXIT_FAILURE);
    }
  }
  init(log051);

  for(i = 0; i < 10; i++){
    if(i < 4){
      log051[i] = 1;
    }else if (i > 8){
      log051[i] = 1;
    }else{
      log051[i] = 0;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res3[i]) {
      printf("##  TEST 3 NG ##\n");
      error_print(log051,res3);
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

