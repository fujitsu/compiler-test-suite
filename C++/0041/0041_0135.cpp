#include <iostream>
#include <cmath>

double montecalro(int n, double const* x, double const* y){
  int in = 0;

  for(int i=0; i<n; ++i){
    if( sqrt(x[i] * x[i] + y[i] * y[i]) <= 1.0){
      ++in;
    }
  }

  return static_cast<double>(4.0 * in) / n;
}

constexpr int check_inside_circle(double x, double y){
  return x * x + y * y <= 1.0 ? 1 : 0;
}

constexpr int count_inside_circle(int n, double const* x, double const* y){
  return n == 1 ?  check_inside_circle(x[0], y[0]) : 
    check_inside_circle(x[n-1], y[n-1]) + count_inside_circle(n-1, x, y);
}

constexpr double montecalro1(int n, double const*x, double const* y){
  return static_cast<double>(4.0 * count_inside_circle(n, x, y) ) / n;
}


int main(void){
  constexpr double x[] = {0.5, 0.6, 0.7, 0.8, 0.9};
  constexpr double y[] = {0.5, 0.6, 0.7, 0.8, 0.9};
  constexpr int n = sizeof(x) / sizeof(x[0]);
  static_assert(n == 5, "n is not 5");
  
  

  static_assert( count_inside_circle(n, x, y) == 3, "count_inside_circle is not 3" );
  static_assert( montecalro1(n, x, y) == 2.4, "montecalro1 is not 2.4" );

  std::cout << "ok" << std::endl;

  return 0;
}
