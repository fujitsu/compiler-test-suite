#include <iostream>
#include <utility>
#include <complex>

int main(void){
  std::complex<double> x(1.0);

  auto ret = std::move(x);
  if(std::is_same<decltype(ret), std::complex<double>>::value){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
