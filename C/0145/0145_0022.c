
#include <stdio.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10
#define ELM_MAX5 10

int main(void) {
  double aa[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5];
  double bb[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5];
  double cc[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5];
  double dd[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5];
  int flag =0;
  int i,j,k,l,m;
  int n1,n2,n3,n4,n5;
  n1 = ELM_MAX1;
  n2 = ELM_MAX2;
  n3 = ELM_MAX3;
  n4 = ELM_MAX4;
  n5 = ELM_MAX5;
    
#pragma omp for collapse(3) private(l,m)
  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
      for (k = 0; k <= n3 ; ++k ){
	for (l = 0; l <= n4 ; ++l ){
	  for (m = 0; m < n5 ; ++m ){
	    aa[i][j][k][l][m] = i+j+k+l+m;
	  }
	}
      }
    }
  }
    

  
  for (i = 0; i < n1 ; ++i ){
#pragma omp for collapse(3) private(m)
    for (j = 0; j <= n2 ; ++j ){
      for (k = 0; k <= n3 ; ++k ){
	for (l = 0; l <= n4 ; ++l ){
	  for (m = 0; m < n5 ; ++m ){
	    bb[i][j][k][l][m] = i+j+k+l+m;
	  }
	}
      }
    }
  }
  
  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
#pragma omp for collapse(3) 
      for (k = 0; k <= n3 ; ++k ){
	for (l = 0; l <= n4 ; ++l ){
	  for (m = 0; m < n5 ; ++m ){
	    cc[i][j][k][l][m] = i+j+k+l+m;
	  }
	}
      }
    }
  }
  
  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
      for (k = 0; k <= n3 ; ++k ){
	for (l = 0; l <= n4 ; ++l ){
	  for (m = 0; m < n5 ; ++m ){
	    dd[i][j][k][l][m] = i+j+k+m+l;
	    if(aa[i][j][k][l][m] !=  dd[i][j][k][l][m] )
	      {
		flag = 1;
		goto check_end;
	      }
	  }
	}
      }
    }
  }

 check_end :;
  if (flag) {
    printf("%s: %d %d %d %d %d\n","NG",i,j,k,l,m);
    printf("%lf %lf %lf %lf\n",dd[i][j][k][l][m],
	   aa[i][j][k][l][m],bb[i][j][k][l][m],cc[i][j][k][l][m]);
  }
  else {
    printf("%s \n","OK");
  }

}
