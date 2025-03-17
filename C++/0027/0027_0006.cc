#include <complex>
#include <iostream>
#include <malloc.h>
using namespace std;

int float_test(void) {
  complex<float> *z1;
  int i, j;
  int N = 3;
  int M = 3;
  z1 = (complex<float> *)calloc(N * N, sizeof(complex<float>));

  for (i = 0; i < N; i++) {
    z1[i * N + i] = complex<float>(1.0, 1.0);
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++)
      cout << " " << z1[i * M + j];
    cout << endl;
  }

  free(z1);
  return 0;
}

int double_test(void) {
  complex<double> *z1;
  int i, j;
  int N = 3;
  int M = 3;
  z1 = (complex<double> *)calloc(N * N, sizeof(complex<double>));

  for (i = 0; i < N; i++) {
    z1[i * N + i] = complex<double>(1.0, 1.0);
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++)
      cout << " " << z1[i * M + j];
    cout << endl;
  }

  free(z1);
  return 0;
}

int long_double_test(void) {
  complex<long double> *z1;
  int i, j;
  int N = 3;
  int M = 3;
  z1 = (complex<long double> *)calloc(N * N, sizeof(complex<long double>));

  for (i = 0; i < N; i++) {
    z1[i * N + i] = complex<long double>(1.0, 1.0);
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < M; j++)
      cout << " " << z1[i * M + j];
    cout << endl;
  }

  free(z1);
  return 0;
}

int main(void) {
  float_test();
  double_test();
  long_double_test();
}
