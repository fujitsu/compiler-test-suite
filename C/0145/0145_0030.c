
#include <stdio.h>
#include <omp.h>

#define MAX_ELM1 10 
#define MAX_ELM2 10 

void work(double (*aa)[MAX_ELM2],int idx1,int idx2);

void work(double (*aa)[MAX_ELM2],int idx1,int idx2) {
  aa[idx1][idx2] = idx1*idx2+1;
}

int main(void){

  int flag=0;
  int k,j;
  double a[MAX_ELM1][MAX_ELM2];
  double b[MAX_ELM1][MAX_ELM2];

  for (k=0; k<MAX_ELM1; ++k) {
    for (j=0; j<MAX_ELM2; ++j) {
      a[k][j] = -1;
      b[k][j] = -1;
    }
  }

  for(k=0; k<=1; k=k+1){
    for(j=0; j<=2; ++j){
      b[k][j] = k*j+1;
    }
  }
  
#pragma omp parallel num_threads(2)
  {
#pragma omp for collapse(2) ordered  schedule(static,3)
    for(k=0; k<=1; k=k+1){
      for(j=0; j<=2; ++j){
#pragma omp ordered
	{
	  printf("%d,%d,%d\n",omp_get_thread_num(), k, j);
	}
	work(a,k,j);
      }
    }
  }

  for (k=0; k<MAX_ELM1; ++k) {
    for (j=0; j<MAX_ELM2; ++j) {
      if(a[k][j] != b[k][j] ) {
	flag =1;
	goto check_end;
      }
    }
  }
 check_end :;

  if(flag) {
    printf("NG :a[%d][%d]=",k,j);
    printf(" %lf %lf \n",a[k][j],b[k][j]);
  }
  else {
    printf("OK \n");
  }
  return 0;
}
