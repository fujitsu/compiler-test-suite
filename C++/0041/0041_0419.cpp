#include <iostream>
#include <vector>

template<class X>
void func(X x){
  decltype(x) a;
}

int main(void){
  std::vector<double> vec;

  double sum = 0.0;
  for(decltype(vec.size()) i=0; i<vec.size(); ++i){
  }

  func(1.0);


  std::cout << "ok" << std::endl;

  return 0;
}
