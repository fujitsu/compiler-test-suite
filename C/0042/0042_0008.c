#include <stdio.h>
int main()
{
  unsigned long long int i;
  int j;
  int x[10],y[10];
  int flag;

  j=0;
  flag=0; 
  for(i=0;i<10;i++){
    y[i]=i;
  }

  #pragma omp parallel
  {
    #pragma omp for schedule(dynamic) nowait
    for(i=j;i<10;i++){
      x[i]=i;
    }
  }

  for(i=0;i<10;i++){
    if( x[i] != y[i] ){
      flag = 1;
      break;
    }
  }
 
  if( flag == 0 ){
    printf("OK --- omp_ull_for_dynamic_009\n");
  }else{
    printf("NG --- omp_ull_for_dynamic_009\n");
  } 
}
