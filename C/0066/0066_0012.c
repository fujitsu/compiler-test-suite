
#include <stdio.h>
#include <string.h>

#ifdef _OPENMP
#include <omp.h>
#endif

struct tag {
  int a, b;
};

void func1(int m, int n) {
  int i, result;
  int                    vlai41 [n], vlai42 [m][n];
  unsigned int           vlau41 [n], vlau42 [m][n];
  long long int          vlai81 [n], vlai82 [m][n];
  unsigned long long int vlau81 [n], vlau82 [m][n];
  float                  vlar41 [n], vlar42 [m][n];
  double                 vlar81 [n], vlar82 [m][n];
  long double            vlar161[n], vlar162[m][n];
  struct tag             vlast1 [n], vlast2 [m][n];

  result = 0;

  for (i = 0; i < n; i++) {
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
  }

#pragma omp parallel
  {
#pragma omp for firstprivate(vlai41, vlai42, vlau41, vlau42, vlai81, vlai82, \
			     vlau81, vlau82, vlar41, vlar42, vlar81, vlar82, \
			     vlar161, vlar162, vlast1, vlast2)
    for (i = 0; i < n; i++) {
      vlai41[i] = vlai41[i] - i;
      vlau41[i] = vlau41[i] - i;
      vlai81[i] = vlai81[i] - i;
      vlau81[i] = vlau81[i] - i;
      vlar41[i] = vlar41[i] - i;
      vlar81[i] = vlar81[i] - i;
      vlar161[i] = vlar161[i] - i;
      vlast1[i].a = vlast1[i].a - i;
      vlai42[0][i] = vlai42[0][i] - i;
      vlau42[0][i] = vlau42[0][i] - i;
      vlai82[0][i] = vlai82[0][i] - i;
      vlau82[0][i] = vlau82[0][i] - i;
      vlar42[0][i] = vlar42[0][i] - i;
      vlar82[0][i] = vlar82[0][i] - i;
      vlar162[0][i] = vlar162[0][i] - i;
      vlast2[0][i].a = vlast2[0][i].a - i;
      if (vlai41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlau41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlai81[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlau81[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar81[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar161[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlast1[i].a != i) {
#pragma omp atomic
	result++;
      }
      if (vlai42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlau42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlai82[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlau82[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar82[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlar162[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlast2[0][i].a != i) {
#pragma omp atomic
	result++;
      }
    }
  }

  if (result != 0) {
    printf("func1 NG\n");
  }
}

void func2(int m, int n) {
  int i, result;
  int vlai41[n], vlai42[m][n];
  long long int ll1, ll2, ll3;

  result = 0;

  for (i = 0; i < n; i++) {
    vlai41[i] = i + i;
    vlai42[0][i] = i + i;
  }
  ll1 = 1;
  ll2 = 2;
  ll3 = 3;

#pragma omp parallel
  {
#pragma omp for firstprivate(vlai41, vlai42, ll1, ll2, ll3)
    for (i = 0; i < n; i++) {
      vlai41[i] = vlai41[i] - i;
      vlai42[0][i] = vlai42[0][i] - i;
      if (vlai41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlai42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (ll1 != 1 || ll2 != 2 || ll3 != 3) {
#pragma omp atomic
	result++;
      }
    }
  }

  if (result != 0) {
    printf("func2 NG\n");
  }
}

void func3(int m, int n) {
  int i, result;
  int vlai41[n], vlai42[m][n];
  long long int ll1, ll2, ll3;

  result = 0;

  for (i = 0; i < n; i++) {
    vlai41[i] = i + i;
    vlai42[0][i] = i + i;
  }
  ll1 = 1;
  ll2 = 2;
  ll3 = 3;

#pragma omp parallel
  {
#pragma omp for firstprivate(ll1, ll2, ll3, vlai41, vlai42)
    for (i = 0; i < n; i++) {
      vlai41[i] = vlai41[i] - i;
      vlai42[0][i] = vlai42[0][i] - i;
      if (vlai41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlai42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (ll1 != 1 || ll2 != 2 || ll3 != 3) {
#pragma omp atomic
	result++;
      }
    }
  }

  if (result != 0) {
    printf("func3 NG\n");
  }
}

void func4(int m, int n) {
  int i, result;
  int vlai41[n], vlai42[m][n];
  long long int ll1, ll2, ll3;

  result = 0;

  for (i = 0; i < n; i++) {
    vlai41[i] = i + i;
    vlai42[0][i] = i + i;
  }
  ll1 = 1;
  ll2 = 2;
  ll3 = 3;

#pragma omp parallel
  {
#pragma omp for firstprivate(ll1, vlai41, ll2, vlai42, ll3)
    for (i = 0; i < n; i++) {
      vlai41[i] = vlai41[i] - i;
      vlai42[0][i] = vlai42[0][i] - i;
      if (vlai41[i] != i) {
#pragma omp atomic
	result++;
      }
      if (vlai42[0][i] != i) {
#pragma omp atomic
	result++;
      }
      if (ll1 != 1 || ll2 != 2 || ll3 != 3) {
#pragma omp atomic
	result++;
      }
    }
  }

  if (result != 0) {
    printf("func4 NG\n");
  }
}

int main() {
#ifdef _OPENMP
  omp_set_num_threads(4);
  omp_set_dynamic(0);
#endif

  func1(2, 10);
  func2(2, 20);
  func3(2, 30);
  func4(2, 40);

  printf("pass\n");
  return 0;
}
