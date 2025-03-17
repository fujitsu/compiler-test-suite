

#include <stdio.h>
#include <omp.h>

#define ELM_MAX 10
#define ELM_MAX2 2

void sub01(double (*aa)[ELM_MAX2]);
void bar(double (*aa)[ELM_MAX2],unsigned int idx1, unsigned int idx2);


void bar(double (*arr)[ELM_MAX2],
	 unsigned int idx1,unsigned int idx2)
{
  arr[idx1][idx2] = idx1+idx2+1;
}


void sub01(double (*aa)[ELM_MAX2])
{
  unsigned int i,j;
  unsigned int ej[2];
  ej[0] = ELM_MAX;
#pragma omp parallel 
  {
#pragma omp for collapse(2) private(i,j)
    for(i=0; i<ej[0]; ++i){
      for(j=0; j<ELM_MAX2; j++){
	bar(aa,i,j);
	
      }
    }
  }
}

int main(void) {
  int flag = 0;
  double a[ELM_MAX][ELM_MAX2];
  double b[ELM_MAX][ELM_MAX2];
  unsigned int i,j;

  for(i=0; i < ELM_MAX ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      a[i][j] = 0;
      b[i][j] = 0;
    }
  }
  for(i=0; i<10; ++i){
    for(j=0; j<ELM_MAX2; j++){
      b[i][j] = i+j+1;
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      if (a[i][j] != b[i][j]) {
	flag = 1;
	
	printf("NG :a[%d][%d]=%lf != %lf \n",i,j,a[i][j],b[i][j]);
      } else {
	printf("OK :a[%d][%d]=%lf \n",i,j,a[i][j]);
      }
    }
  }

  if(flag) {
    
    printf(" %lf \n",a[i][j]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
