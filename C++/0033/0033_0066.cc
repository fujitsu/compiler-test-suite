#include <stdio.h>
struct t {
  long long int a:8;
};
struct t  a,b;
int main() {
  int work = 0;
#pragma omp parallel
  b.a = a.a + 10LL; 
#pragma omp parallel
  if (b.a == 10LL) {
#pragma omp parallel
    a.a = 15LL - b.a;
#pragma omp parallel
    if (a.a == 5LL) {
#pragma omp parallel
      ;
    } else {
#pragma omp parallel
#pragma omp atomic
      work++;
    }
  } else {
#pragma omp parallel
#pragma omp atomic
    work++;
  }

  if(!work)
    printf("ok\n");
  else
    printf("ng\n");
}
