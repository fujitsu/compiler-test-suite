#include <iostream>
#include <iterator>
#include <numeric>
#include <initializer_list>

template<class T>
struct X{
  typedef T  value_type;
  typedef T* iterator;
  typedef const T* const_iterator;
  
  std::initializer_list<value_type> elem_;

  X(std::initializer_list<value_type> x): elem_(x){
  }

  const_iterator begin(void) const{
    return elem_.begin();
  }

  const_iterator end(void) const{
    return elem_.end();
  }
};

template<class T>
bool test(T const x) {
  bool ret = false;

  auto beg = std::begin(x);
  auto end = std::end(x);

  auto test1 = std::is_same<decltype(beg), typename T::const_iterator>::value;
  auto test2 = std::is_same<decltype(end), typename T::const_iterator>::value;
  
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
  X<int> const a = { 1, 2, 3 };

  if(test(a)){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}
