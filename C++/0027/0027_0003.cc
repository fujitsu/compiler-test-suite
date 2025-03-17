#include <complex>
#include <iostream>

const int N = 10;

template <class T> class field {
public:
  std::complex<T> x, y, z;

  field() { set(std::complex<T>(0.0, 0.0)); }
  field(std::complex<T> c) { set(c); }
  field(std::complex<T> x, std::complex<T> y, std::complex<T> z) {
    set(x, y, z);
  }

  void set(std::complex<T> c) { this->set(c, c, c); }
  void set(std::complex<T> x, std::complex<T> y, std::complex<T> z) {
    this->x = x;
    this->y = y;
    this->z = z;
  }

  std::complex<T> inner_product(field<T> v) {
    return (this->x * v.x) + (this->y * v.y) + (this->z * v.z);
  }

  field<T> outer_product(field<T> v) {
    return field<T>((this->y * v.z) - (this->z * v.y),
                    (this->z * v.x) - (this->x * v.z),
                    (this->x * v.y) - (this->y * v.x));
  }

private:
};

int main(void) {
  field<double> E[N][N], H[N][N];
  std::complex<double> inner_product[N][N];
  field<double> outer_product[N][N];

  int i, j;

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      E[i][j].set(std::complex<double>((double)i, (double)j));
      H[i][j].set(std::complex<double>((double)i, (double)j));
    }
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      inner_product[i][j] = E[i][j].inner_product(H[i][j]);
      outer_product[i][j] = E[i][j].outer_product(H[i][j]);
    }
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      std::cout << inner_product[i][j];
    }
    std::cout << std::endl;
  }

  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      std::cout << '[' << outer_product[i][j].x << outer_product[i][j].y
                << outer_product[i][j].z << ']';
    }
    std::cout << std::endl;
  }

  return 0;
}
