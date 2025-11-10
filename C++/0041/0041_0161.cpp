#include <iostream>

struct MyObject{

  explicit MyObject(int n): n_(n), data_(new int[n]){
  }

  ~MyObject(){
    delete data_;
  }
 
  int* begin(){
    return data_;
  }

  int* end(){
    return &data_[n_];
  }

  int* data_;
  int n_;
};


int main(void){
  const int n = 5;
  MyObject my(n);

  for(int i=0; i<n; ++i){
    my.data_[i] = i;
  }

  for(auto x : my){
    std::cout << x << std::endl;
  }

  return 0;
}
