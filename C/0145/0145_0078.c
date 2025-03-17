

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10
#define ELM_MAX5 10

void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],
	   unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],unsigned int, unsigned int, unsigned int, unsigned int, unsigned int);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],
	 unsigned int idx1,unsigned int idx2, unsigned int idx3, unsigned int idx4, unsigned int idx5)
{
  arr[idx1][idx2][idx3][idx4][idx5] = idx1+idx2+idx3+idx4+idx5+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],
	   unsigned int is ,unsigned int ie, unsigned int iinc,
	   unsigned int js ,unsigned int je, unsigned int jinc,
	   unsigned int ks ,unsigned int ke, unsigned int kinc,
	   unsigned int ls ,unsigned int le, unsigned int linc,
	   unsigned int ms ,unsigned int me, unsigned int minc)
{
  unsigned int i,j,k,l,m;

#pragma omp parallel
  {
#pragma omp for collapse(4) private(i,j,k,l,m)
    for(i=is; i<ie; i=i+iinc){
      for(j=js; j<je; j=j+jinc){
	for(k=ks; k<ke; k=k+kinc){
	  for(l=ls; l<le; l=l+linc){
	    for(m=ms; m<me; m++){
	      bar(aa,i,j,k,l,m);
	    }
	  }
	}
      }
    }
  }

}

int main(void) {
  int flag = 0;
  double a[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5];
  double b[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5];
  unsigned int i,j,k,l,m;

  unsigned int mis=0,mie=ELM_MAX1,miinc=1;
  unsigned int mjs=0,mje=ELM_MAX2,mjinc=1;
  unsigned int mks=0,mke=ELM_MAX3,mkinc=1;
  unsigned int mls=0,mle=ELM_MAX3,mlinc=1;
  unsigned int mms=0,mme=ELM_MAX3,mminc=1;


  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	for(l=0; l<ELM_MAX4 ; ++l) {
	  for(m=0; m<ELM_MAX5 ; ++m) {
	    a[i][j][k][l][m] = 0;
	    b[i][j][k][l][m] = i+j+k+l+m+1;
	  }
	}
      }
    }
  }

  sub01(a,mis,mie,miinc,mjs,mje,mjinc,mks,mke,mkinc,
	mls,mle,mlinc,mms,mme,mminc);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for(k=0; k<ELM_MAX3 ; ++k) {
	for(l=0; l<ELM_MAX4 ; ++l) {
	  for(m=0; m<ELM_MAX5 ; ++m) {
	    if (a[i][j][k][l][m] != b[i][j][k][l][m]) {
	      flag = 1;
	      break;
	    }
	  }
	}
      }
    }
  }

  if(flag) {
    printf("NG :a[%d][%d][%d][%d][%d]=",i,j,k,l,m);
    printf(" %lf \n",a[i][j][k][l][m]);
  }
  else {
    printf("OK \n");
  }

  return 0;
}
