
#include <stdio.h>

#define ELM_MAX1 10
#define ELM_MAX2 10
#define ELM_MAX3 10
#define ELM_MAX4 10

int main(void) {
  double LE1[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double LE2[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double LT1[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double LT2[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double GE1[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double GE2[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double GT1[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double GT2[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double MIX1[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];
  double MIX2[ELM_MAX1][ELM_MAX2][ELM_MAX3][ELM_MAX4];

  int flag=0;
  int i,j,k,l;
  unsigned int ui,uj,uk,ul;
  int n1,n2,n3,n4;
  n1 = ELM_MAX1;
  n2 = ELM_MAX2;
  n3 = ELM_MAX3;
  n4 = ELM_MAX4;

  for (i = 0; i < n1 ; ++i ){
    for (j = 0; j < n2 ; ++j ){
      for (k = 0; k < n3 ; ++k ){
        for (l = 0; l < n4 ; ++l ){
	  LE1[i][j][k][l] = 0; 
	  LE2[i][j][k][l] = 0; 
	  LT1[i][j][k][l] = 0; 
	  LT2[i][j][k][l] = 0; 
	  GE1[i][j][k][l] = 0; 
	  GE2[i][j][k][l] = 0; 
	  GT1[i][j][k][l] = 0; 
	  GT2[i][j][k][l] = 0; 
	  MIX1[i][j][k][l] = 0; 
	  MIX2[i][j][k][l] = 0; 
	}
      }
    }
  }


  
#pragma omp parallel
  {
#pragma omp for collapse(4) 
    for (i = 1; i <= n1-1 ; ++i ){
      for (uj = 1; uj <= n2-1 ; uj++ ){
	for (k = 1; k <= n3-1 ; ++k ){
	  for (ul = 1; ul <= n4-1 ; ++ul ){
	    LE1[i][uj][k][ul] = i+uj+k+ul;
	  }
	}
      }
    }
  }

#pragma omp parallel
  {
#pragma omp for collapse(4) 
    for (ui = 1; ui <= n1-1 ; ui=ui+1 ){
      for (j = 1; j <= n2-1 ; j=j+1 ){
	for (uk = 1; uk <= n3-1 ; uk=uk+1 ){
	  for (ul = 1; ul <= n4-1 ; ul=ul+1 ){
	    LE2[ui][j][uk][ul] = ui+j+uk+ul;
	  }
	}
      }
    }
  }

  
#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,uj,k,l)
    for (ui = 1; ui < n1 ; ui=ui+1 ){
      for (uj = 1; uj < n2 ; uj++ ){
	for (k = 1; k < n3 ; k=k+1 ){
	  for (l = 1; l < n4 ; ++l ){
	    LT1[ui][uj][k][l] = ui+uj+k+l;
	  }
	}
      }
    }
  }

#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,j,uk,l)
    for (ui = 1; ui < n1 ; ui++ ){
      for (j = 1; j < n2 ; ++j ){
	for (uk = 1; uk < n3 ; uk++ ){
	  for (l = 1; l < n4 ; ++l ){
	    LT2[ui][j][uk][l] = ui+j+uk+l;
	  }
	}
      }
    }
  }


  
#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,uj,k,l)
    for (ui = n1-1; ui >= 1 ; --ui ){
      for (uj = n2-1; uj >= 1 ; --uj ){
        for (k = n3-1; k >= 1 ; k-- ){
          for (l = n4-1; l >= 1 ; l-- ){
            GE1[ui][uj][k][l] = ui+uj+k+l;
          }
        }
      }
    }
  }
#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,j,k,ul)
    for (ui = n1-1; ui >= 1 ; --ui ){
      for (j = n2-1; j >= 1 ; j=j-1 ){
        for (k = n3-1; k >= 1 ; k-- ){
          for (ul = n4-1; ul >= 1 ; ul=ul-1 ){
            GE2[ui][j][k][ul] = ui+j+k+ul;
          }
        }
      }
    }
  }

  
#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,j,uk,l)
    for (ui = n1-1; ui > 0 ; --ui ){
      for (j = n2-1; j > 0 ; --j ){
        for (uk = n3-1; uk > 0 ; uk-- ){
          for (l = n4-1; l > 0 ; l-- ){
            GT1[ui][j][uk][l] = ui+j+uk+l;
          }
        }
      }
    }
  }

#pragma omp parallel
  {
#pragma omp for collapse(4) private(i,uj,k,ul)
    for (i = n1-1; i > 0 ; i=i-1 ){
      for (uj = n2-1; uj > 0 ; --uj ){
        for (k = n3-1; k > 0 ; --k ){
          for (ul = n4-1; ul > 0 ; ul-- ){
            GT2[i][uj][k][ul] = i+uj+k+ul;
          }
        }
      }
    }
  }

  

#pragma omp parallel
  {
#pragma omp for collapse(4) private(ui,j,uk,l)
    for (ui = 1; ui < n1 ; ++ui ){
      for (j = n2-1; j > 0 ; --j ){
	for (uk = n3-1; uk >= 1 ; uk=uk-1 ){
	  for (l = 1; l <= n4-1 ; ++l ){
	    MIX1[ui][j][uk][l] = ui+j+uk+l;
	  }
	}
      }
    }
  }
#pragma omp parallel
  {
#pragma omp for collapse(4) private(i,uj,k,ul)
    for (i = n1-1; i >= 1 ; --i ){
      for (uj = 1 ; uj < n2 ; ++uj ){
	for (k = n3-1; k > 0 ; k=k-1 ){
	  for (ul = 1; ul <= n4-1 ; ++ul ){
	    MIX2[i][uj][k][ul] = i+uj+k+ul;
	  }
	}
      }
    }
  }

  for (i = 1; i < n1 ; ++i ){
    for (j = 1; j < n2 ; ++j ){
      for (k = 1; k < n3 ; ++k ){
	for (l = 1; l < n4 ; ++l ){
	  if(LT1[i][j][k][l] != LT2[i][j][k][l])   { flag+=1; printf("NG_001 \n");
	    printf("%d %d %d %d %lf %lf\n",i,j,k,l,LT1[i][j][k][l],LT2[i][j][k][l]);}
	  if(LE1[i][j][k][l] != LE2[i][j][k][l])   { flag+=1; printf("NG_002 \n");}
	  if(GT1[i][j][k][l] != GT2[i][j][k][l])   { flag+=1; printf("NG_003 \n");}
	  if(GE1[i][j][k][l] != GE2[i][j][k][l])   { flag+=1; printf("NG_004 \n");}
	  if(MIX1[i][j][k][l] != MIX2[i][j][k][l]) { flag+=1; printf("NG_005 \n");}

	  if(LT1[i][j][k][l] != LE1[i][j][k][l])  { flag+=1; printf("NG_101 \n");}
	  if(LE1[i][j][k][l] != GT1[i][j][k][l])  { flag+=1; printf("NG_102 \n");}
	  if(GT1[i][j][k][l] != GE1[i][j][k][l])  { flag+=1; printf("NG_103 \n");}
	  if(GE1[i][j][k][l] != MIX1[i][j][k][l]) { flag+=1; printf("NG_104 \n");}

	  if(MIX1[i][j][k][l] != (i+j+k+l)) { flag+=1; printf("NG_000 \n");printf("%lf %lf \n",(i+j+k+l),MIX1[i][j][k][l]);}
	  if(flag >= 1 ) {
	    goto check_end;
	  }
	}
      }
    }
  }
 check_end:;

  if(flag == 0) {
    printf("OK \n");
  }

  return 0;
}
