#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
#define n 47
      double yyy[n][n],c_yyy[n][n];
      double zzz[n][n][n],c_zzz[n][n][n];
      double aaa,c_aaa;
      double tmp;
      int i,j,k,i_err;

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            yyy[i][j]=(float)((j)*10+i);
            zzz[i][j][k]=(float)((k)*100+(j)*10+i);
            aaa=0.0;
            c_yyy[i][j]=(float)((j)*10+i);
            c_zzz[i][j][k]=(float)((k)*100+(j)*10+i);
            c_aaa=0.0;
          }
        }
      }

      for (k=0; k<n; k+=1){ 
#pragma omp parallel for private(tmp,j) lastprivate(aaa)
       for (j=0; j<n; j+=1){ 
#pragma omp parallel for private(i)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[i][j][k]+yyy[i][j];
            aaa = sqrt(pow(tmp,2));
          }
        }
      }

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = c_zzz[i][j][k]+c_yyy[i][j];
            c_aaa = sqrt(pow(tmp,2));
          }
        }
      }
      i_err=0;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
	    if ((fabs((aaa - c_aaa)/aaa)) > 1e-15 ) i_err=1;
          }
        }
      }
      if (i_err==0) {
        printf(" OK \n");
      }else{
        printf(" NG \n");
      }
      exit (0) ;
      }
