
#include <stdio.h>
#include <omp.h>

#define MAX_ELM1 10 
#define MAX_ELM2 10 
#define MAX_ELM3 10 

void work(double (*aa)[MAX_ELM2][MAX_ELM3],unsigned int idx1,unsigned int idx2,unsigned int idx3);

void work(double (*aa)[MAX_ELM2][MAX_ELM3],unsigned int idx1,unsigned int idx2,unsigned int idx3) {
  aa[idx1][idx2][idx3] = idx1*idx2+idx3+1;
}

int main(void){

  int flag=0;
  unsigned int k,j,i;
  double a[MAX_ELM1][MAX_ELM2][MAX_ELM3];
  double b[MAX_ELM1][MAX_ELM2][MAX_ELM3];

  for (k=0; k<MAX_ELM1; ++k) {
    for (j=0; j<MAX_ELM2; ++j) {
      for (i=0; i<MAX_ELM3; ++i) {
	a[k][j][i] = -1;
	b[k][j][i] = -1;
      }
    }
  }

  for(k=0; k<=1; k=k+1){
    for(j=0; j<=2; ++j){
	for(i=0; i<4; ++i){
	  b[k][j][i] = k*j+i+1;
	}
    }
  }
  
#pragma omp parallel num_threads(2)
  {
#pragma omp for collapse(3) ordered private(i,j,k) schedule(static,3)
    for(k=0; k<=1; k=k+1){
      for(j=0; j<=2; ++j){
	for(i=0; i<4; ++i){
#pragma omp ordered
	  {
	    printf("%d,%d,%d,%d\n",omp_get_thread_num(), k, j, i);
	  }
	  work(a,k,j,i);
	}
      }
    }
  }

  for (k=0; k<MAX_ELM1; ++k) {
    for (j=0; j<MAX_ELM2; ++j) {
      for (i=0; i<MAX_ELM3; ++i) {
	if(a[k][j][i] != b[k][j][i] ) {
	  flag =1;
	  goto check_end;
	}
      }
    }
  }
 check_end :;

  if(flag) {
    printf("NG :a[%d][%d][%d]=",k,j,i);
    printf(" %lf %lf \n",a[k][j][i],b[k][j][i]);
  }
  else {
    printf("OK \n");
  }
  return 0;
}
