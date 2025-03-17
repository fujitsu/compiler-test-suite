#include <stdio.h>
int main() {
  int i = 1;
  long long int lli = 1;

#pragma omp parallel
  (char &)i = 2;
#pragma omp parallel
  if ((char &)i == 2)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d \n", (char &)i);

#pragma omp parallel
  (short &)i = 3;
#pragma omp parallel
  if ((short &)i == 3)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d \n", (short &)i);

#pragma omp parallel
  (int &)i = 4;
#pragma omp parallel
  if ((int &)i == 4)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %d \n", (int &)i);

#pragma omp parallel
  (float &)i = (float)2.1;
#pragma omp parallel
  if ((float &)i == (float)2.1)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %f \n", (float &)i);

#pragma omp parallel
  (double &)lli = 22.11;
#pragma omp parallel
  if ((double &)lli == 22.11)
#pragma omp parallel
    ;
  else
#pragma omp parallel
    printf("ng %f \n", (double &)lli);

  printf("ok\n");
}
