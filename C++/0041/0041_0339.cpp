#include <iostream>
#include <iterator>
#include <vector>
#include <array>
#include <valarray>
#include <initializer_list>

constexpr std::size_t n = 3;

template<class T>
struct X{
  typedef T  value_type;
  typedef T* iterator;
  typedef const T* const_iterator;
  
  std::initializer_list<value_type> elem_;
  
  X() = default;
  ~X() = default;

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
struct Y{
  typedef T  value_type;
  typedef T* iterator;
  typedef const T* const_iterator;
  
  std::initializer_list<value_type> elem_;

  Y() = default;
  ~Y() = default;

  Y(std::initializer_list<value_type> x): elem_(x){
  }
};

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
  X<int> a[n];
  Y<double> b[n];
  
  if( test(a) && test(b) ){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }
  
  return 0;
}
