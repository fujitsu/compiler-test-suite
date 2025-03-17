
#include <stdio.h>
#include <unistd.h>

#define ELM_MAX1 2
#define ELM_MAX2 3
#define ELM_MAX3 4
#define ELM_MAX4 5
#define ELM_MAX5 6
#define ELM_MAX6 7

int main(void) {
  double aa[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5][ELM_MAX6];
  double bb[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5][ELM_MAX6];
  double cc[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5][ELM_MAX6];
  double dd[ELM_MAX1][ELM_MAX2+1][ELM_MAX3+1][ELM_MAX4+1][ELM_MAX5][ELM_MAX6];
  int flag =0;
  int i,j,k,l,m,o;
  int n1,n2,n3,n4,n5,n6;
  n1 = ELM_MAX1;
  n2 = ELM_MAX2;
  n3 = ELM_MAX3;
  n4 = ELM_MAX4;
  n5 = ELM_MAX5;
  n6 = ELM_MAX6;

#pragma omp parallel
  {


#pragma omp for collapse(4) private(m,o)
    for (i = 0; i < n1 ; ++i ){
      for (j = 0; j <= n2 ; ++j ){
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    for (m = 0; m < n5 ; ++m ){
	      for (o = 0; o < n6 ; o++ ){
		aa[i][j][k][l][m][o] = i+j+k+l+m+o;
#pragma omp flush
	      }
	    }
	  }
	}
      }
    }
  }

  for (i = 0; i < n1 ; ++i ){
#pragma omp parallel
    {

#pragma omp for collapse(4) private(o)
      for (j = 0; j <= n2 ; ++j ){
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    for (m = 0; m < n5 ; ++m ){
	      for (o = 0; o < n6 ; o++ ){
		bb[i][j][k][l][m][o] = i+j+k+l+m+o;
#pragma omp flush
	      }
	    }
	  }
	}
      }
    }
  }

  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j <= n2 ; ++j ){
#pragma omp parallel
      {
#pragma omp for collapse(4) 
	for (k = 0; k <= n3 ; ++k ){
	  for (l = 0; l <= n4 ; ++l ){
	    for (m = 0; m < n5 ; ++m ){
	      for (o = 0; o < n6 ; o++ ){
		cc[i][j][k][l][m][o] = i+j+k+l+m+o;
#pragma omp flush
	      }
	    }
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
	    for (o = 0; o < n6 ; o++ ){
	      dd[i][j][k][l][m][o] = i+j+k+l+m+o;
	      if(aa[i][j][k][l][m][o] != bb[i][j][k][l][m][o] ||
		 bb[i][j][k][l][m][o] != cc[i][j][k][l][m][o] ||
		 cc[i][j][k][l][m][o] != dd[i][j][k][l][m][o] )
		{
		  flag = 1;
		  goto check_end;
		}
	    }
	  }
	}
      }
    }
  }

 check_end :;
  if (flag) {
    printf("%s: %d %d %d %d %d %d\n","NG",i,j,k,l,m,o);
    printf("%lf %lf %lf %lf\n",dd[i][j][k][l][m][o],
	   aa[i][j][k][l][m][o],bb[i][j][k][l][m][o],cc[i][j][k][l][m][o]);
  }
  else {
    printf("%s \n","OK");
  }

}
