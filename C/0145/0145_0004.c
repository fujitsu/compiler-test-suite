

#include <stdio.h>
#include <omp.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10
#define ELM_MAX5 10


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5]);
void bar(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],int, int, int, int,int);


void bar(double (*arr)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5],
	 int idx1, int idx2, int idx3, int idx4, int idx5)
{
  arr[idx1][idx2][idx3][idx4][idx5] = idx1+idx2+idx3+idx4+idx5+1;
}


void sub01(double (*aa)[ELM_MAX2][ELM_MAX3][ELM_MAX4][ELM_MAX5])
{
  int i,j,k,l,m;
  int n=10;

#pragma omp for collapse(5) 
  for(i=0; i<ELM_MAX1; ++i){
    for(j=0; j<10; j++){
      for (k=0; k<n; k=k+1) {
	for (l=0; l<(n+5-2-3); l=l+1) {
	  for (m=0; m<(2*n-ELM_MAX5); m=m+1) {
	    bar(aa,i,j,k,l,m);
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
  int i,j,k,l,m;

  for(i=0; i < ELM_MAX1 ; ++i) {
    for(j=0; j < ELM_MAX2 ; ++j) {
      for (k=0; k < ELM_MAX3; k=k+1) {
	for (l=0; l < ELM_MAX4; ++l) {
	  for (m=0; m < ELM_MAX5; ++m) {
	    a[i][j][k][l][m] = 0;
	    b[i][j][k][l][m] = i+j+k+l+m+1;
	  }
	}
      }
    }
  }

  sub01(a);

  for(i=0; i<ELM_MAX1 ; ++i) {
    for(j=0; j<ELM_MAX2 ; ++j) {
      for (k=0; k<ELM_MAX3; k=k+1) {
	for (l=0; l < ELM_MAX4; ++l) {
	  for (m=0; m < ELM_MAX5; ++m) {
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
