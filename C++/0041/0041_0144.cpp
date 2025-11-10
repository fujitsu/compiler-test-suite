#include <iostream>
#include <vector>
#include <algorithm>

int main(void){
  std::vector<int> vec;

  
  struct AbsLess{
    bool operator() (int lhs, int rhs){
      return std::abs(lhs) < std::abs(rhs);
    }
  };

  std::sort(vec.begin(), vec.end(), AbsLess());

  
  std::sort(vec.begin(), vec.end(), [](int lhs, int rhs)
	    { return std::abs(lhs) < std::abs(rhs); } );
  
  std::cout << "ok" << std::endl;

  return 0;
}
