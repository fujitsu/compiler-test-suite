#include <iostream>
#include <iterator>
#include <vector>
#include <array>
#include <valarray>
#include <initializer_list>
#include <numeric>

template<class T>
bool test(T x) {
  bool ret = false;

  auto beg = std::begin(x);
  auto end = std::end(x);

  auto test1 = std::is_same<decltype(beg), typename T::iterator>::value;
  auto test2 = std::is_same<decltype(end), typename T::iterator>::value;
  
  int sum1 = 0;
  for(auto i : x){
    sum1 += i;
  }

  int sum2 = std::accumulate(beg, end, 0);
  
  auto test3 = (sum1 == sum2) ? true : false;

  if(test1 && test2 && test3){
    ret = true;
  }
     
  return ret;
}

int main(void){
  std::vector<int> a(3, 1);
  std::array<int, 3> b{1, 2, 3};
  std::initializer_list<int> c = { 0, 0, 0 };

  if(test(a) && test(b) && test(c)){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
