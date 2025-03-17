#include <stdio.h>

int ini() {
  return 0;
}

int end() {
  return 100;
}

int inc() {
  return 1;
}


int main()
{

  int j;
  int i;
  int array[2];
  int ans=10000;
  int res=0;
  

  array[0] = 0;
  array[1] = 0;
  

  

#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=ini();i<100;++i) {
    for(j =0; j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;
  
#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<100;++i) {
    for(j =ini(); j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;

  

#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<end();++i) {
    for(j =0; j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;
  
#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<100;++i) {
    for(j =0; j < end(); ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;

  

#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<100;i += inc()) {
    for(j =0; j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;
  
#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<100;++i) {
    for(j =0; j < 100; j=j+inc()){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;

  
  
  
#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=array[1];i<100;++i) {
    for(j =0; j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;

#pragma omp parallel for collapse( 2 ) reduction(+:res)
  for(i=0;i<100;++i) {
    for(j =array[0]; j < 100; ++j){
      res += 1;
    }
  }
  if(res== ans) {
    printf("OK \n");
  } else {
    printf("NG \n");
  }
  res = 0;
  
  return 0;
}
