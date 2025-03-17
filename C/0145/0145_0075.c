

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4],
	   unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int, unsigned int);
void bar(double (*arr)[ELM_MAX2][ELM_MAX3][ELM_MAX4],unsigned int,unsigned int,unsigned int,unsigned int);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3][ELM_MAX4],
	 unsigned int idx1,unsigned int idx2,unsigned int idx3,unsigned int idx4)
{
  arr[idx1][idx2][idx3][idx4] = idx1+idx2+idx3+idx4+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4],
	   unsigned int is ,unsigned int ie, unsigned int iinc,
	   unsigned int js ,unsigned int je, unsigned int jinc,
	   unsigned int ks ,unsigned int ke, unsigned int kinc,
	   unsigned int ls ,unsigned int le, unsigned int linc)
{
  unsigned int i,j,k,l;

#pragma omp parallel
  {
#pragma omp for collapse(4) private(i,j,k,l)
    for(i=is; i<ie; i=i+iinc){
      for(j=js; j<je; j=j+jinc){
	for(k=ks; k<ke; k=k+kinc){
	  for(l=ls; l<le; l=l+linc){
	    bar(aa,i,j,k,l);
	  }
	}
      }
    }
  }

}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double b[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  unsigned int i,j,k,l;

  unsigned int mis=0,mie=ELM_MAX1,miinc=1;
  unsigned int mjs=0,mje=ELM_MAX2,mjinc=1;
  unsigned int mks=0,mke=ELM_MAX3,mkinc=1;
  unsigned int mls=0,mle=ELM_MAX3,mlinc=1;


  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	for(l=0; l<ELM_MAX4 ; ++l) {
	  a[i][j][k][l] = 0;
	  b[i][j][k][l] = i+j+k+l+1;
	}
      }
    }
  }

  sub01(a,mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,
	mls,mle,mlinc);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	for(l=0; l<ELM_MAX4 ; ++l) {
	  if (a[i][j][k][l] != b[i][j][k][l]) {
	    flag = 1;
	    break;
	  }
	}
      }
    }
  }

  if(flag) {
    printf("NG :a[%d][%d][%d][%d]=",i,j,k,l);
    printf(" %lf \n",a[i][j][k][l]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
