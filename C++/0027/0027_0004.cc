#include <complex>
#include <iostream>

const int N = 5;
int main(void) {
  std::complex<double> x[N];
  int i;

  for (i = 0; i < N; i++) {
    x[i] = std::complex<double>((double)(N + 1) / (double)(i + 1), (double)i);
  }

  std::cout << "real : ";
  for (i = 0; i < N; i++) {
    std::cout << real(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "imag : ";
  for (i = 0; i < N; i++) {
    std::cout << imag(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "abs : ";
  for (i = 0; i < N; i++) {
    std::cout << abs(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "norm : ";
  for (i = 0; i < N; i++) {
    std::cout << norm(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "arg : ";
  for (i = 0; i < N; i++) {
    std::cout << arg(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "conj : ";
  for (i = 0; i < N; i++) {
    std::cout << conj(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "sin : ";
  for (i = 0; i < N; i++) {
    std::cout << sin(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "cos : ";
  for (i = 0; i < N; i++) {
    std::cout << cos(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "tan : ";
  for (i = 0; i < N; i++) {
    std::cout << tan(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "sinh : ";
  for (i = 0; i < N; i++) {
    std::cout << sinh(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "cosh : ";
  for (i = 0; i < N; i++) {
    std::cout << cosh(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "tanh : ";
  for (i = 0; i < N; i++) {
    std::cout << tanh(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "log : ";
  for (i = 0; i < N; i++) {
    std::cout << log(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "log10 : ";
  for (i = 0; i < N; i++) {
    std::cout << log10(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "exp : ";
  for (i = 0; i < N; i++) {
    std::cout << exp(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "sqrt : ";
  for (i = 0; i < N; i++) {
    std::cout << sqrt(x[i]) << "  ";
  }
  std::cout << std::endl;

  std::cout << "pow : ";
  for (i = 0; i < N; i++) {
    std::cout << pow(x[i], x[i]) << "  ";
  }
  std::cout << std::endl;

  return 0;
}
