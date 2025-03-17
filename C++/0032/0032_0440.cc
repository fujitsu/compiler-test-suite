#include <stdio.h>
template<class T>
T max(int const n, T const* x){
  T temp = x[0];
#pragma omp parallel for reduction(max: temp)
  for(int i=1; i<n; ++i){
    if(temp < x[i]){
      temp = x[i];
    }
  }
  return temp;
}
int main(void){
  int y[10];
  int temp1 = max(10, y);
  double x[10];
  double temp0 = max(10, x);

  printf("ok\n", temp1);
  printf("ok\n", temp0);

  return 0;
}
