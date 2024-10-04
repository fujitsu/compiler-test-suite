#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#define n 3

int i_err;
double zzz[n][n][n];
double aaa[n][n][n];

      void sub (int kk) {
      int ii, jj;
      double tmp;

#pragma omp parallel for private(tmp)
        for (jj=0; jj<n; jj+=1){ 
          for (ii=0; ii<n; ii+=1){ 
            tmp = zzz[kk][jj][ii]+zzz[kk][jj][ii]+zzz[kk][jj][ii];
            aaa[kk][jj][ii] = sqrt(pow(tmp,2));
          }
        }
      return;
      }

int main() { 
      double c_zzz[n][n][n];
      double c_aaa[n][n][n];
      double tmp;
      int i,j,k;

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            zzz[k][j][i]=k*100+j*10+i;
            aaa[k][j][i]=0.0;
            c_zzz[k][j][i]=k*100+j*10+i;
            c_aaa[k][j][i]=0.0;
          }
        }
      }

#pragma omp parallel for
      for (k=0; k<n; k+=1){ 
        sub (k);
      }

      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = c_zzz[k][j][i]+c_zzz[k][j][i]+c_zzz[k][j][i];
            c_aaa[k][j][i] = sqrt(pow(tmp,2));
          }
        }
      }
      i_err=0;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            if (aaa[k][j][i]!=c_aaa[k][j][i]){
	      i_err++;
              printf("aaa[%d][%d][%d] = %lf must be c_aaa[%d][%d][%d] = %lf \n",
		     k,j,i,aaa[k][j][i],k,j,i,c_aaa[k][j][i]);
	    }
          }
        }
      }
      if (i_err==0) {
        printf(" : OK\n");
      }else{
        printf(" : NG\n");
      }
      exit (0) ;
      }
