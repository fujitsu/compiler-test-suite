#include <iostream>

template<class T, int N = 100>
struct X{
  T array_[N];
  int n_ = N;
};



int main(void){
  X<int> a; 
  X<double, 10> b;

  if(a.n_ == 100 && b.n_ == 10){
    std::cout << "ok" << std::endl;
  } else{
    std::cout << "ng" << std::endl;
  }

  return 0;
}
