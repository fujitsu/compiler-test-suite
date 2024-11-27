#include <stdlib.h>
#include <stdio.h>

static void  error_print(unsigned long int log051[], unsigned long int res[]);
static void init(unsigned long int log051[]);
int main(){
  signed long int  i;
  unsigned long int  log051[10];
  unsigned long int  res1[10]={1,1,1,1,1,0,0,0,0,0};
  unsigned long int  res2[10]={1,1,1,1,0,0,0,0,0,0};
  unsigned long int  res3[10]={0,0,0,0,0,1,1,1,1,1};
  unsigned long int  res4[10]={0,0,0,0,1,1,1,1,1,1};
  unsigned long int  res5[10]={0,0,0,0,1,0,0,0,0,0};
  unsigned long int  res6[10]={1,1,1,1,0,1,1,1,1,1};

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
  init(log051);

  for(i = 0; i < 10; i++){
    if(i > 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res3[i]) {
      printf("##  TEST 3 NG ##\n");
      error_print(log051,res3);
      exit(EXIT_FAILURE);
    }
  }
  init(log051);

  for(i = 0; i < 10; i++){
    if(i >= 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res4[i]) {
      printf("##  TEST 4 NG ##\n");
      error_print(log051,res4);
      exit(EXIT_FAILURE);
    }
  }
  init(log051);

  for(i = 0; i < 10; i++){
    if(i == 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res5[i]) {
      printf("##  TEST 5 NG ##\n");
      error_print(log051,res5);
      exit(EXIT_FAILURE);
    }
  }
  init(log051);

  for(i = 0; i < 10; i++){
    if(i != 4){
      log051[i] = 1L;
    }else{
      log051[i] = 0L;
    }
  }

  for(i = 0; i < 10; i++){
    if (log051[i] != res6[i]) {
      printf("##  TEST 6 NG ##\n");
      error_print(log051,res6);
      exit(EXIT_FAILURE);
    }
  }
  
  printf(" ##  OK ##\n");
}

static void  error_print(unsigned long int log051[], unsigned long int res[]) {
  int i;
  for(i = 0; i < 10; i++){
    printf("log051[%d] = %3ld res[%d] = %3ld \n",
	   i, log051[i],i,res[i]);
  }
}
    
static void init(unsigned long int log051[]) {
  int i;
  for(i = 0; i < 10; i++) log051[i] = -1;
}

