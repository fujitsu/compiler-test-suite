#include <stdio.h>
#ifdef _OPENMP
#include <omp.h>
#endif

int main()
{
  char opt;
  int work=0,num=1;
#pragma omp parallel
   opt = 'a';

    switch (opt) {
    case 'a':
#pragma omp parallel
#pragma omp atomic
      work++;
      break;
    case 'Z':
#pragma omp parallel
      printf("Z\n");
      break;
    case 'l':
#pragma omp parallel
      printf("l\n");
      break;
    case 'V':
#pragma omp parallel
      printf("V\n");
      break;
    case 'E':
    case 'b':
#pragma omp parallel
      printf("Eb\n");
      break;
    }

#ifdef _OPENMP
    num = omp_get_max_threads();
#endif
      if( work == num )
	printf("ok\n");
}


