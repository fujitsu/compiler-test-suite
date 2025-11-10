#include <iostream>
#include <cstring>

struct MyVector{
  using value_type = double;
  using iterator = value_type*;
  using reference = value_type&;

  int n_ = 0;
  value_type* elem_ = nullptr;

  MyVector(int n): n_{n}, elem_{new value_type[n]} 
  {
    std::cout << __func__ << std::endl;
    memset(elem_, 0x00, n * sizeof(value_type) );
  }

  ~MyVector(){
    std::cout << __func__ << std::endl;
    if(elem_){
      delete[] elem_;
      elem_ = nullptr;
    }
  }

  template<class R>
  MyVector& operator=(R const& r){
    for(int i=0; i<this->size(); ++i){
      (*this)[i] = r[i];
      
    }

    return *this;
  }

  int size(void) const{
    return n_;
  }

  value_type operator[](int index) const{
    return elem_[index];
  }

  reference operator[](int index){
    return elem_[index];
  }

  iterator begin(void) const{
    return elem_;
  }

  iterator end(void) const{
    return elem_ + n_;
  }
};


template<class L, class R>
struct plus{
  L const& l_; 
  R const& r_; 
  
  plus(L const& l, R const& r) : l_(l), r_(r){
  }
  
  
  typename MyVector::value_type operator[](int index) const{
    return l_[index] + r_[index];
  }  
};


template<class L, class R>
plus<L, R> operator+(L const& lhs, R const& rhs){
  return plus<L, R>(lhs, rhs);
}

int main(void){
  constexpr int n = 10;
  MyVector ret(n), x(n), y(n), z(n);

  for(int i=0; i<x.size(); ++i){
    x[i] = i;
    y[i] = i;
    z[i] = i;
  }
  
  ret = x + y + z; 
  

  for(auto tmp : ret){
    std::cout << tmp << std::endl;
  }
  
  return 0;
}
