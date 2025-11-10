#include <iostream>

double dot(int n, double const* x, double const* y){
  double sum = 0.0;

  for(int i=0; i<n; ++i){
    sum += x[i] * y[i];
  }

  return sum;
}

constexpr double dot1(int n, double const* x, double const* y, int index){
  return index < n ? x[index] * y[index] + dot1(n, x, y, index+1) : 0;
}

constexpr double dot2(int n, double const* x, double const* y){
  return n == 1 ? x[0] * y[0] : x[n-1] * y[n-1] + dot2(n-1, x, y);
}


int main(void){
  constexpr double x[] = {1.0, 2.0, 3.0};
  constexpr double y[] = {1.0, 2.0, 3.0};
  constexpr int n = sizeof(x) / sizeof(x[0]);

  

  static_assert( dot1(n, x, y, 0) == 14.0, "dot1 is not 14.0" );
  static_assert( dot2(n, x, y) == 14.0, "dot2 is not 14.0" );

  std::cout << "ok" << std::endl;

  return 0;
}
