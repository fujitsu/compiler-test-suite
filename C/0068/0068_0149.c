#include <stdio.h>
int main()
{
  long long int i;
  int j,k;
  int x[11],y[11];
  int flag;

  j=0;
  k=10;
  flag=0; 
  for(i=0;i<=10;i++){
    y[i]=i;
  }

  #pragma omp parallel
  {
    #pragma omp for schedule(guided) nowait
    for(i=j;i<=k;i++){
      x[i]=i;
    }
  }

  for(i=0;i<=10;i++){
    if( x[i] != y[i] ){
      flag=1;
      break;
    }
  }
 
  if( flag == 0 ){
    printf("OK --- \n");
  }else{
    printf("NG --- \n");
  } 
}