
#include <stdio.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10

int main(void) {
  double aa[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1];
  double bb[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1];
  double cc[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1];
  double result1=0,result2=0,result3=0;
  unsigned int i,j,k,l;
  unsigned int n1,n2,n3,n4;
  n1 = ELM_MAX1;
  n2 = ELM_MAX2;
  n3 = ELM_MAX3;
  n4 = ELM_MAX4;

#pragma omp parallel
  {

#pragma omp for collapse(2) private(i,j,k,l)
    for (i = 0; i < n1 ; ++i ){
      for (j = 0; j <= n2 ; ++j ){
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    aa[i][j][k][l] = i+j+k+l;
	    #pragma omp flush
	  }
	}
      }
    }
  }

  for (i = 0; i < n1 ; ++i ){
#pragma omp parallel
    {

#pragma omp for collapse(2) private(j,k,l)
      for (j = 0; j <= n2 ; ++j ){
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    bb[i][j][k][l] = i+j+k+l;
	    #pragma omp flush
	  }
	}
      }
    }
  }

  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
#pragma omp parallel
      {
#pragma omp for collapse(2) private(k,l)
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    cc[i][j][k][l] = i+j+k+l;
	    #pragma omp flush
	  }
	}
      }
    }
  }

  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
      for (k = 0; k <= n3 ; ++k ){
	for (l = 0; l <= n4 ; ++l ){
	  result1 += aa[i][j][k][l];
	  result2 += bb[i][j][k][l];
	  result3 += cc[i][j][k][l];
	}
      }
    }
  }

  if (result1 != result2) {
    printf("%s %lf %lf %lf \n","NG",result1,result2,result3);
  }
  else if (result2 != result3) {
    printf("%s %lf %lf %lf \n","NG",result1,result2,result3);
  }
  else {
    printf("%s \n","OK");
  }

}
