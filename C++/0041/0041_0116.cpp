#include <iostream>

template<class T>
class vector{

public:
  size_t size_;
  T* data_;

  vector(): size_(0), data_(nullptr){}

  
  vector(vector&& x): size_(x.size_), 
		      data_(x.data_)
  {
    x.size_ = 0;
    x.data_ = nullptr;
  }

  
  vector(const vector& x): size_ (x.size_),
			   data_(new T[size_])
  {
    for(size_t i=0; i<size_; ++i){
      data_[i] = x.data_[i];
    }			       
  }

  
  vector& operator=(vector&& x)
  {
    size_ = x.size_;
    data_ = x.data_;
    x.size_ = 0;
    x.data_ = nullptr;

    return *this;
  }

  
  vector& operator=(const vector& x)
  {
    size_ = x.size_;
    delete data_;

    data_ = new T[size_];
    
    for(size_t i=0; i<size_; ++i){
      data_[i] = x.data_[i];
    }

    return *this;
  }
};


int main(void){
  vector<double> x;

  std::cout << "ok" << std::endl;

  return 0;
}
