#include <iostream>
template<typename T>
inline T func() {
  std::cerr << "template version of func\n";
  return T(0);
}
inline double func() {
  std::cerr << "double version of func\n";
  return func<double>();
}
int main() {
  func<double>();
  func();
}

