#include <stdio.h>
#include <stdlib.h>
#include <math.h>










#define n 48
      static double zzz[n][n];
      static double aaa[n][n][n];
#pragma omp threadprivate(zzz)

      void sub (int k) {
      double tmp;
      int i,j;
        for (j=0; j<n; j+=1){ 
          for (i=0; i<n; i+=1){ 
            tmp = zzz[j][i]+zzz[j][i]+zzz[j][i];
            aaa[k][j][i] = sqrt(pow(tmp,2));
          }
        }
      return;
      }

int lto_sub_10 () {
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
        sub (k);
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
        printf("omp_PARADO_045 : OK\n");
      }else{
        printf("omp_PARADO_045 : NG\n");
      }
      return (0) ;
}
