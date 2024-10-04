#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main() { 
#define n 47
      double zzz[n][n][n],c_zzz[n][n][n];
      double aaa[n][n][n],c_aaa[n][n][n];
      double tmp;
      int i,j,k,l,i_err;

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            zzz[i][j][k]=(float)((k)*100+(j)*10+i);
            aaa[i][j][k]=0.0;
            c_zzz[i][j][k]=(float)((k)*100+(j)*10+i);
            c_aaa[i][j][k]=0.0;
          }
        }
      }

      for (l=0; l<n; l+=1){ 
#pragma omp parallel for private(tmp,k)
      for (k=0; k<n; k+=1){ 
#pragma omp parallel for private(j)
        for (j=0; j<n; j+=1){ 
#pragma omp parallel for private(i)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[i][j][k]+zzz[i][j][k]+zzz[i][j][k];
            aaa[i][j][k] = sqrt(pow(tmp,2));
          }
        }
      }
#pragma omp parallel for private(tmp,k)
      for (k=0; k<n; k+=1){ 
#pragma omp parallel for private(j)
        for (j=0; j<n; j+=1){ 
#pragma omp parallel for private(i)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[i][j][k]+zzz[i][j][k]+zzz[i][j][k];
            aaa[i][j][k] = sqrt(pow(tmp,2));
          }
        }
      }
#pragma omp parallel for private(tmp,k)
      for (k=0; k<n; k+=1){ 
#pragma omp parallel for private(j)
        for (j=0; j<n; j+=1){ 
#pragma omp parallel for private(i)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[i][j][k]+zzz[i][j][k]+zzz[i][j][k];
            aaa[i][j][k] = sqrt(pow(tmp,2));
          }
        }
      }
      }

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = c_zzz[i][j][k]+c_zzz[i][j][k]+c_zzz[i][j][k];
            c_aaa[i][j][k] = sqrt(pow(tmp,2));
          }
        }
      }
      i_err=0;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 

	    if ((fabs((aaa[i][j][k] - c_aaa[i][j][k])/aaa[i][j][k])) > 1e-15 ) {
	      i_err=1;
            }
          }
        }
      }
      if (i_err==0) {
        printf(" OK \n");;
      }else{
        printf(" NG \n");;
      }
      exit (0) ;
      }
