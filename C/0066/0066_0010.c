
#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

struct tag {
  int a, b;
};

void func(int m, int n) {
  int i, result;

  result = 0;

#pragma omp parallel
  {
#pragma omp for
    for (i = 0; i < n; i++) {
      int                    vlai41 [n], vlai42 [m][n];
      unsigned int           vlau41 [n], vlau42 [m][n];
      long long int          vlai81 [n], vlai82 [m][n];
      unsigned long long int vlau81 [n], vlau82 [m][n];
      float                  vlar41 [n], vlar42 [m][n];
      double                 vlar81 [n], vlar82 [m][n];
      long double            vlar161[n], vlar162[m][n];
      struct tag             vlast1 [n], vlast2 [m][n];

      vlai41[i] = i + i;
      vlau41[i] = i + i;
      vlai81[i] = i + i;
      vlau81[i] = i + i;
      vlar41[i] = i + i;
      vlar81[i] = i + i;
      vlar161[i] = i + i;
      vlast1[i].a = i + i;
      vlai42[0][i] = i + i;
      vlau42[0][i] = i + i;
      vlai82[0][i] = i + i;
      vlau82[0][i] = i + i;
      vlar42[0][i] = i + i;
      vlar82[0][i] = i + i;
      vlar162[0][i] = i + i;
      vlast2[0][i].a = i + i;
      if (vlai41[i] != i+i || vlai41[i] != vlai42[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlau41[i] != i+i || vlau41[i] != vlau42[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlai81[i] != i+i || vlai81[i] != vlai82[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlau81[i] != i+i || vlau81[i] != vlau82[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlar41[i] != i+i || vlar41[i] != vlar42[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlar81[i] != i+i || vlar81[i] != vlar82[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlar161[i] != i+i || vlar161[i] != vlar162[0][i]) {
#pragma omp atomic
	result++;
      }
      if (vlast1[i].a != i+i || vlast1[i].a != vlast2[0][i].a) {
#pragma omp atomic
	result++;
      }
    }
  }

  if (result == 0) {
    printf("OK\n");
  } else {
    printf("NG\n");
  }
}

int main() {
#ifdef _OPENMP
  omp_set_num_threads(4);
  omp_set_dynamic(0);
#endif

  func(2, 10);
  return 0;
}
