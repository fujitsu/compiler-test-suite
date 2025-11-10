#include <iostream>
#include <vector>
#include <thread>

void axpy_kernel(int beg, int end, double* ret, 
		 double alpha, double* x, double* y){
  for(int i=beg; i<end; ++i){
    ret[i] = alpha * x[i] + y[i];
  }
}

void axpy(int n, double* ret, double alpha,
	  double* x, double* y){
  int const num_thread = std::thread::hardware_concurrency();
  std::vector<std::thread> th;

  int const len = (n - num_thread - 1) / num_thread;
  for(int i=0; i<num_thread; ++i){
    int beg = i * len;
    int end = (i == num_thread - 1) ? n : beg + len;
    th.emplace_back(axpy_kernel, beg, end, ret, alpha, x, y);
  }

  for(int i=0; i<num_thread; ++i){
    th[i].join();
  }
}

int main(void){
  constexpr int n = 10;
  
  double ret[n] = {0.0};
  double alpha = 3.14;
  double x[n];
  double y[n];

  for(int i=0; i<n; ++i){
    x[i] = i;
    y[i] = i;
  }

  axpy(n, ret, alpha, x, y);

  for(auto vec: ret){
    std::cout << vec << std::endl;
  }

  return 0;
}

