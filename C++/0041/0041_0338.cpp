#include <iostream>
#include <iterator>
#include <vector>
#include <array>
#include <valarray>
#include <initializer_list>

constexpr std::size_t n = 3;

template<class T, std::size_t N>
bool test(T const (&x)[N]) {
  bool ret = false;

  auto beg = std::begin(x);
  auto end = std::end(x);

  std::size_t count1 = 0;
  for(auto i=beg; i!=end; ++i){
    ++count1;
  }
  
  std::size_t count2 = 0;
  for(auto i : x){
    ++count2;
  }
  
  auto test1 = (count1 == count2) ? true : false;
  auto test2 = (count1 == n) ? true : false;

  if(test1 && test2){
    ret = true;
  }
     
  return ret;
}

int main(void){
  std::vector<int> a[n];
  std::array<int, 10> b[n];
  std::valarray<int> c[n];
  std::initializer_list<int> d[n];

  if(test(a) && test(b) && 
     test(c) && test(d) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
