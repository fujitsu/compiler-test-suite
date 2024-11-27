#include <stdio.h>
#include <omp.h>

int main()
{
  int ia101;
  int chk[2];
  int dat[2];

  ia101 = 1;
  #pragma omp parallel
  {
     #pragma omp sections firstprivate(ia101)
     {
        #pragma omp section
        {
           ia101 += 1;
           chk[0]=omp_get_thread_num();
           dat[0]=ia101;
        }
        #pragma omp section
        {
           ia101 += 1;
           chk[1]=omp_get_thread_num();
           dat[1]=ia101;
        }
     }
  }
  if( chk[0] == chk[1] ){
    if( dat[0] == 3 || dat[1] == 3 ){
      printf(" OpenMP2.5\n");
      printf("OK\n");
    }else{
      printf(" OpenMP2.5\n");
      printf("NG\n");
    }
  }else{
    if( dat[0] == 2 && dat[1] == 2 ){
      printf(" OpenMP2.5\n");
      printf("OK\n");
    }else{
      printf(" OpenMP2.5\n");
      printf("NG\n");
    }
  }
}
