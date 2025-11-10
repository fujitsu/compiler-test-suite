#include <iostream>

struct Matrix{
  int n_ = 100, m_ = 200;
  double** ptr = nullptr;
};

int main(void){
  Matrix a;

  auto dist = std::move_if_noexcept(a);

  if(dist.n_ == 100 && dist.m_ == 200){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
