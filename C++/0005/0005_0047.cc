#include <stdio.h>


const int N = 10000;
double data[10000];

double
func(void){
  double sum;
#if  __cplusplus || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0;i<N;i++){
#else
  int i;
  for(i=0;i<N;i++){
#endif
    data[i] = data[i] * 2.0;
  }
  sum = 0.0;
#if  __cplusplus || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0;i<N;i++){
#else
  for(i=0;i<N;i++){
#endif
    sum = sum+data[i]*data[i];
  }
  return sum;
}


int main(void){
#if  __cplusplus || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 199901L)
  for(int i=0;i<N;i++){
#else
  int i;
  for(i=0;i<N;i++){
#endif
    data[i] = 2.0;
  }
  printf("%f\n", func());
}

