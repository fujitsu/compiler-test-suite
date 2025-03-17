#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif
int main()
{
    unsigned char          c     = 255;
    int                    i     = -2147483648;
    long long int          llia  = 5;
    int work = 2;
    int ok = 0;

#pragma omp parallel
 {
    if(c>>llia != 7)
        printf("***C1NEX058-05*** N   G ***\n");
    else
#pragma omp atomic
      ok++;
    

    if(i>>llia != -67108864)
        printf("***C1NEX058-14*** N   G ***\n");
    else
#pragma omp atomic
      ok++;

  }
#ifdef _OPENMP
 work = omp_get_max_threads() * 2;
#endif
 if (ok == work)
      printf("ok\n");
}
