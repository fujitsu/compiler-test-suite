#include <iostream>
#include <vector>

int main(void){
  std::vector<double> vec;

  auto func = [&vec](double tmp){
    vec.push_back(tmp);   
  };
  
  func(3.0);

  std::cout << vec[0] << std::endl; 

  return 0;
}
