#include <stdio.h>
#include <stdlib.h>
#include <math.h>










#define n 48
      static double zzz[n][n];
      static double aaa[n][n][n];
#pragma omp threadprivate(zzz)

static
      void sub2(int k, int j) {
      double tmp;
      int i;
#pragma omp parallel for private(tmp) copyin(zzz) shared(aaa)
          for (i=0; i<n; i+=1){ 
            tmp = zzz[j][i]+zzz[j][i]+zzz[j][i];
            aaa[k][j][i] = sqrt(pow(tmp,2));
          }
      return;
      }

      void sub1 (int k) {
      int j;
        for (j=0; j<n; j+=1){ 
          sub2 (k,j);
        }
      return;
      }

int lto_sub_11 () {
      int i,j,k,i_err;
      double c_zzz[n][n];
      double c_aaa[n][n][n];
      double tmp;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            zzz[j][i]=j*10+i;
            aaa[k][j][i]=0.0;
            c_zzz[j][i]=j*10+i;
            c_aaa[k][j][i]=0.0;
          }
        }
      }
#pragma omp parallel for copyin(zzz) shared(aaa)
      for (k=0; k<n; k+=1){ 
        sub1 (k);
      }
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = c_zzz[j][i]+c_zzz[j][i]+c_zzz[j][i];
            c_aaa[k][j][i] = sqrt(pow(tmp,2));
          }
        }
      }
      i_err=0;
      for (k=0; k<n; k+=1){ 
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
	    if (abs((aaa[k][j][i])-(c_aaa[k][j][i])) > 0.000002) {
	      i_err=1;
	      printf("aaa[%d][%d][%d] = %lf (correct: %lf)\n",
		     k,j,i,aaa[k][j][i],c_aaa[k][j][i]);
            }
          }
        }
      }
      if (i_err==0) {
        printf("omp_PARADO_046 : OK\n");
      }else{
        printf("omp_PARADO_046 : NG\n");
      }
      return (0) ;
}
