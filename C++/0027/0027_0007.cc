#include <complex>
#include <iostream>
using namespace std;

int float_test(void) {
  complex<float> mycomplex(3.3333f, 4.4444f);

  cout << abs(mycomplex) << endl;

  return 0;
}

int double_test(void) {
  complex<double> mycomplex(6.6666, 7.7777);

  cout << abs(mycomplex) << endl;

  return 0;
}

int long_double_test(void) {
  complex<double> mycomplex(333333333333.33333333333,
                            111111111111.111111111111);

  cout << abs(mycomplex) << endl;

  return 0;
}

int zero_test(void) {
  complex<float> mycomplex(0.0, -0.0);

  cout << abs(mycomplex) << endl;

  return 0;
}

int main(void) {
  float_test();
  double_test();
  long_double_test();
  zero_test();
  cout << "PASS" << endl;
  return 0;
}
