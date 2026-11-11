#include <iostream>
#include <iterator>
#include <numeric>
#include <initializer_list>
#include <algorithm>

template<class T>
struct X{
  typedef T  value_type;
  typedef T* iterator;
  typedef const T* const_iterator;
  
  value_type elem_[3];

  X(std::initializer_list<value_type> x){
  std::copy(x.begin(), x.end(), elem_);
  }

  iterator begin(void){
    return elem_;
  }

  iterator end(void){
    return elem_ + 3;
  }
};

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
  X<int> a = { 1, 2, 3 };

  if(test(a)){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
