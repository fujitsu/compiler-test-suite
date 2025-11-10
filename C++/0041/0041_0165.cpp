#include <iostream>

class iterator{
public:
  int* ptr_;

public:
  iterator(int* ptr): ptr_(ptr) {
  }

  iterator& operator ++()
  {
    ++ptr_;
    return *this;
  }

  int operator *() const
  {
    return *ptr_;
  }
};

inline bool operator!=(const iterator& a, const iterator& b){
  return !(a.ptr_ == b.ptr_);
}


class MyVector{
public:
  MyVector(int n): n_(n), data_(new int[n]){
  }

  int* data_;
  int n_;
};

iterator begin(const MyVector& obj){                                                                                   
  return iterator( obj.data_ );                                                                         
}                                                                                                   
                                                                                                    
iterator end(const MyVector& obj){                                                                                     
  return iterator( obj.data_ + obj.n_ );                                                                    
}                                                                                                   


int main(void){
  int const n = 10;
  MyVector obj(n);

  for(int i=0; i<n; ++i){
    obj.data_[i] = i;
  }

  for(auto x : obj){
    std::cout << x << std::endl;
  }

  return 0;
}
