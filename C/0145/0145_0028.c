

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3],int *inival,int *endval,int *incval);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3],int idx1, int idx2, int idx3);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3],
	 int idx1,int idx2, int idx3)
{
  arr[idx1][idx2][idx3] = idx1+idx2+idx3+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3],int *inival,int *endval,int *incval)
{
  int i,j,k;

#pragma omp parallel for collapse(2) lastprivate(i,j,k)
  for(i=inival[0]; i<endval[0]; i=i+incval[0]){
    for(j=inival[1]; j<endval[1]; j=j+incval[1]){
      for(k=inival[2]; k<endval[2]; k=k+incval[2]){
	bar(aa,i,j,k);
      }
    }
  }

  printf("[%d][%d][%d] \n",i,j,k);

}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  double b[ELM_MAX1][ELM_MAX2][ELM_MAX3];
  int i,j,k;

  int iniv[3];
  int endv[3];
  int incv[3];
  iniv[0] = 0;
  iniv[1] = 0;
  iniv[2] = 0;
  endv[0] = ELM_MAX1;
  endv[1] = ELM_MAX2;
  endv[2] = ELM_MAX3;
  incv[0] = 1;
  incv[1] = 1;
  incv[2] = 1;


  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	a[i][j][k] = 0;
	b[i][j][k] = i+j+k+1;
      }
    }
  }

  sub01(a,iniv,endv,incv);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	if (a[i][j][k] != b[i][j][k]) {
	  flag = 1;
	  break;
	}
      }
    }
  }

  if(flag) {
    printf("NG :a[%d][%d][%d]=",i,j,k);
    printf(" %lf \n",a[i][j][k]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
