

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 12
#define ELM_MAX2 8
#define ELM_MAX3 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3]);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3],int idx1, int idx2,int idx3);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3],
	 int idx1,int idx2,int idx3)
{
  arr[idx1][idx2][idx3] = idx1+idx2+idx3+1;
  
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3])
{
  int i,j,k;
  int ii[3],jj[3],kk[3];
  ii[0] = 0;
  ii[1] = ELM_MAX1;
  ii[2] = 1;
  jj[0] = 1;
  jj[1] = ELM_MAX2;
  jj[2] = 1;
  kk[0] = 1;
  kk[1] = ELM_MAX3;
  kk[2] = 3;

#pragma omp for collapse(3) 
  for(i=ii[0]; i<ii[1]; i=i+ii[2]){
    for(j=jj[0]; j<jj[1]; j=j+jj[2]){
      for(k=kk[0]; k<kk[1]; k=k+kk[2]){
	bar(aa,i,j,k);
      }
    }
  }
}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  double b[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  int i,j,k;

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	a[i][j][k] = 0;
	b[i][j][k] = 0;
      }
    }
  }

  for(i=0; i<ELM_MAX1; ++i){
    for(j=1; j<ELM_MAX2; j=j+1){
      for(k=1; k<ELM_MAX3; k=k+3){
	b[i][j][k] = i+j+k+1;
      }
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=1; j<ELM_MAX2 ; ++j) {
      for(k=1; k<ELM_MAX3 ; ++k) {
	if (a[i][j][k] != b[i][j][k]) {
	  printf(" %lf--%lf \n",a[i][j][k],b[i][j][k]);
	  flag = 1;
	  goto check_end;
	}
      }
    }
  }
 check_end :;
  if(flag) {
    printf("NG :a[%d][%d][%d]=",i,j,k);
    printf(" %lf:%lf \n",a[i][j][k],b[i][j][k]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
