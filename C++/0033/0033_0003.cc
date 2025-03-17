#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

#define I4_CON 1073741824
#define U4_CON 2147483648
#define I8_CON 0x4000000000000000
#define U8_CON 0x8000000000000000
int main()
{
    long long int shlli;
    long int      li;
    unsigned long int      uli;
    int ok=0;


#ifdef _OPENMP
    omp_set_num_threads(1);
#endif
#pragma omp parallel
    li = 1;
#pragma omp parallel
    shlli = sizeof(li) * 8 - 2;
#pragma omp parallel
    li = li << shlli;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
#pragma omp parallel
    if (li   != I8_CON){
#else
#pragma omp parallel
    if (li   != I4_CON){
#endif
#pragma omp parallel
        printf("li   shlli error. :%d, %lld \n", li,shlli );
    }
    else
#pragma omp parallel
      ok ++;

#pragma omp parallel
    uli = 1;
#pragma omp parallel
    shlli = sizeof(uli) * 8 - 1;
#pragma omp parallel
    uli = uli << shlli;

#if LONG64 || defined(__aarch64__) || defined(_LP64)
#pragma omp parallel
    if (uli  != U8_CON){
#else
#pragma omp parallel
    if (uli  != U4_CON){
#endif
#pragma omp parallel
        printf("uli  shlli error. :%d,%lld \n", uli ,shlli);
    }
    else
#pragma omp parallel
      ok ++;

#pragma omp parallel
    if (ok == 2)
#pragma omp parallel
      printf("ok\n");
    else
#pragma omp parallel
      printf("ng\n");


}


