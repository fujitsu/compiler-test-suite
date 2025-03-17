

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3],unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3],unsigned int idx1, unsigned int idx2, unsigned int idx3);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3],
	 unsigned int idx1,unsigned int idx2, unsigned int idx3)
{
  arr[idx1][idx2][idx3] = idx1+idx2+idx3+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3],unsigned int is,unsigned int ie,unsigned int iinc,
	   unsigned int js ,unsigned int je,unsigned int jinc,
	   unsigned int ks ,unsigned int ke,unsigned int kinc)
{
  unsigned int i,j,k;

#pragma omp parallel
  {
#pragma omp for collapse(2) lastprivate(i,j,k)
    for(i=is; i<ie; i=i+iinc){
      for(j=js; j<je; j=j+jinc){
	for(k=ks; k<ke; k=k+kinc){
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

  unsigned int mis=0,mie=ELM_MAX1,miinc=1;
  unsigned int mjs=0,mje=ELM_MAX2,mjinc=1;
  unsigned int mks=0,mke=ELM_MAX3,mkinc=1;


  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	a[i][j][k] = 0;
	b[i][j][k] = i+j+k+1;
      }
    }
  }

  sub01(a,mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc);

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
