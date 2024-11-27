#include <stdio.h>

#define MAX 10

double c[MAX];
double d[MAX];
void foo(){
  int i;
  for (i=1; i<MAX; i++){
    c[i] = 0.;
    d[i] = 1.;
  }
}

int main(){
  int i, error;
  error = 0;
  foo();
  for(i=1; i<MAX; i++){
    if(c[i] != 0. || d[i] != 1.){
      error |= 1;
    }
  }
  if ( error == 0 ){
    printf("OK\n");
  } else {
    printf("NG\n");
    for(i=1; i<MAX; i++){
      printf("c[%d] = %f, d[%d] = %f\n",i,c[i],i,d[i]);
    }
  }
}
