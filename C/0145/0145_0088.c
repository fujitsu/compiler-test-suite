

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3]);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3],unsigned int idx1, unsigned int idx2, unsigned int idx3);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3],unsigned int idx1,unsigned int idx2, unsigned int idx3)
{
  arr[idx1][idx2][idx3] = idx1+idx2+idx3+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3])
{
  unsigned int i,j,k;
  unsigned int n=10;

#pragma omp parallel
  {
#pragma omp for collapse(2) lastprivate(i,j,k)
    for(i=0; i<ELM_MAX1; ++i){
      for(j=0; j<10; j=j+1){
	for (k=0; k<n; k=k+1) {
	  bar(aa,i,j,k);
	}
      }
    }
  }

  printf("[%d][%d][%d] \n",i,j,k);
}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  double b[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  unsigned int i,j,k;
  unsigned int n=ELM_MAX1;

  for(i=0; i < n ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for (k=0; k<10; k=k+1) {
	a[i][j][k] = 0;
	b[i][j][k] = i+j+k+1;
      }
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for (k=0; k<ELM_MAX3; k=k+1) {
	if (a[i][j][k] != b[i][j][k]) {
	  flag = 1;
	  break;
	}
      }
    }
  }
  
  
  if(flag) {
    printf("NG :a[%d][%d][%d]=",i-1,j-1,k-1);
    printf(" %lf \n",a[i][j][k]);
  }
  else {
    printf("OK \n");
  }
  
  return 0;
}
