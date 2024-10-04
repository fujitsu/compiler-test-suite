#include <stdio.h>
#include <unistd.h>
#include <omp.h>

int main()
{
    int b, i, j, k, l;
    double a;
    float  m=3.00;
    int ord[101];

    omp_set_dynamic(0);
    setenv("OMP_NESTED","TRUE",1);
#pragma omp parallel private(ord, a, b, k)
    {
  #pragma omp for ordered  schedule(static,1)
      for( i=0; i<100; i++ ) {
        a = (double)(i+1) / (double)m;
        b = (int)a;
        if( (int)a == b ) 
    #pragma omp ordered
        {
            for( l=0;l<101;l++ ) ord[l]=-99;
      #pragma omp parallel
            {
        #pragma omp for ordered 
              for( j=0; j<100; j++ ) {
          #pragma omp ordered
                  ord[j] = j;
              }
            }

            for( k=0; k<100; k++ ) {
              if( ord[k] != k ) {
                printf("[%d]NG k=%d, %d\n",omp_get_thread_num(),k,ord[k]);
                _exit(1);
              }
            }

        }
      }
    }
    printf("OK\n");
    return 0;  
}
