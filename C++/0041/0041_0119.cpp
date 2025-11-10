#include <iostream>
#include <utility>

template<class T>
class vector{

public:

  
  vector()
  {
    std::cout << "ctor" << std::endl;
  }

  
  vector(vector&& x)
  {
    std::cout << "move ctor" << std::endl;
  }

  
  vector(const vector& x)
  {
    std::cout << "copy ctor" << std::endl;
  }

  
  vector& operator=(vector&& x)
  {
    std::cout << "move operator" << std::endl;
    return *this;
  }

  
  vector& operator=(const vector& x)
  {
    std::cout << "copy operator" << std::endl;
    return *this;
  }
};


int main(void){
  vector<double> vec1; 

  auto vec2 = vec1; 
  auto vec3(vec1);  

  auto vec4( static_cast< decltype(vec1)&& >( vec1 ) ); 

  vec2 = vec1; 
  vec4 = std::move( vec1 ); 
  
  std::cout << "ok" << std::endl;

  return 0;
}
