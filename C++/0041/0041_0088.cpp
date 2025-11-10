#include <iostream>
#include <iterator>

struct Iterator{
  int value;
  explicit Iterator(int v): value(v){  }
  Iterator& operator++(){
    ++value;
    return *this;
  }
  int operator*(){ return value; }
  bool operator!=(const Iterator& iter){ return value != iter.value; }
};

struct Container{
  class inner{
    int value;
  public:
    inner(int v): value(v){  }
    Iterator operator()(){ return Iterator(value);  }
  };
  inner begin, end;
  Container(int a, int b): begin(a), end(b+1){
  }
};

int main(void){
  Container myobj(1, 5);

  int sum = 0;
  for(auto i : myobj){ 
    sum += i;
  } 

  if(sum == 15){
    std::cout << "ok" << std::endl;
  } else {
    std::cout << "ng" << std::endl;
  }

  return 0;
}

