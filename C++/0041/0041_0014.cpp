#include <iostream>
#include <vector>

int main(void){
  std::vector<double> vec;
  
  auto input_data = [&vec](double r){
    vec.push_back(r);
  };

  auto func = [&](void){ };

  input_data(10.0);
  
  if(vec[0] == 10.0){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
