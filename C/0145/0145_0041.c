
#include <stdio.h>
#include <omp.h>

#define MAX_ELM1 10 
#define MAX_ELM2 10 
#define MAX_ELM3 10 
#define MAX_ELM4 10 

void work(double (*aa)[MAX_ELM2][MAX_ELM3][MAX_ELM4],int idx1,int idx2,int idx3,int idx4);

void work(double (*aa)[MAX_ELM2][MAX_ELM3][MAX_ELM4],int idx1,int idx2,int idx3,int idx4) {
  aa[idx1][idx2][idx3][idx4] = idx1*idx2+idx3*idx4+1;
}

int main(void){

  int flag=0;
  int l,k,j,i;
  double a[MAX_ELM1][MAX_ELM2][MAX_ELM3][MAX_ELM4];
  double b[MAX_ELM1][MAX_ELM2][MAX_ELM3][MAX_ELM4];

  for (l=0; l<MAX_ELM1; ++l) {
    for (k=0; k<MAX_ELM2; ++k) {
      for (j=0; j<MAX_ELM3; ++j) {
	for (i=0; i<MAX_ELM4; ++i) {
	  a[l][k][j][i] = -1;
	  b[l][k][j][i] = -1;
	}
      }
    }
  }

  for(l=1; l<5; l=l+1){
    for(k=0; k<=1; k=k+1){
      for(j=0; j<=2; ++j){
	for(i=0; i<4; ++i){
	  b[l][k][j][i] = l*k+j*i+1;
	}
      }
    }
  }
  
#pragma omp parallel num_threads(2)
  {
#pragma omp for collapse(4) ordered  schedule(static,3)
    for(l=1; l<5; l=l+1){
      for(k=0; k<=1; k=k+1){
	for(j=0; j<=2; ++j){
	  for(i=0; i<4; ++i){
#pragma omp ordered
	    {
	      printf("%d,%d,%d,%d,%d\n",omp_get_thread_num(),l, k, j, i);
	    }
	    work(a,l,k,j,i);
	  }
	}
      }
    }
  }

  for (l=0; l<MAX_ELM1; ++l) {
    for (k=0; k<MAX_ELM2; ++k) {
      for (j=0; j<MAX_ELM3; ++j) {
	for (i=0; i<MAX_ELM4; ++i) {
	  if(a[l][k][j][i] != b[l][k][j][i] ) {
	    flag =1;
	    goto check_end;
	  }
	}
      }
    }
  }
 check_end :;

  if(flag) {
    printf("NG :a[%d][%d][%d][%d]=",l,k,j,i);
    printf(" %lf %lf \n",a[l][k][j][i],b[l][k][j][i]);
  }
  else {
    printf("OK \n");
  }
  return 0;
}
