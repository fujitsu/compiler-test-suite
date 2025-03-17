#include <stdio.h>
int main(){
 int i=1;
  switch (i){
    case 1:
#pragma omp parallel
     i++; printf("ok\n");
    case 2:
#pragma omp parallel
     i--;
    default:
#pragma omp parallel
     i=i++;
  }
}
