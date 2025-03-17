#include <stdio.h>
template <class T>
struct X1 {
  operator int();
};


template <class T>
class A1 :private X1<T>{
 public:
  using X1<T>::operator T;
};



A1<int> obj2;

template <class T>
X1<T>::operator int(){  return 2;}

int main(){
 if (obj2.operator int()==2){ printf("ok\n");} else {printf("ng\n");}
}


