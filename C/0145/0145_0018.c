
//This test assumes that #pragma parallel omp is ignored.
#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3]);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3],int idx1, int idx2, int idx3);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3],
	 int idx1,int idx2, int idx3)
{
  arr[idx1][idx2][idx3] = idx1+idx2+idx3+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3])
{
  int i,j,k;

  int is,ie,iinc;
  int js,je,jinc;
  int ks,ke,kinc;

  is=0;ie=ELM_MAX1;iinc=1;
  js=0;je=ELM_MAX2;jinc=1;
  ks=0;ke=ELM_MAX3;kinc=1;



#pragma parallel omp for collapse(3) lastprivate(i,j,k)
  for(i=is; i<ie; i=i+iinc){
    for(j=js; j<je; j=j+jinc){
      for(k=ks; k<ke; k=k+kinc){
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


  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	a[i][j][k] = 0;
	b[i][j][k] = i+j+k+1;
      }
    }
  }

  sub01(a);

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
