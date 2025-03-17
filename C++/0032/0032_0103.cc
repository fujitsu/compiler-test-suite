#include <stdio.h>
class A1 {
 public:
  int a;
  A1* f(){printf("ok\n"); return 0;}
  A1* ff();
};

template <class T>
class B1 : public T{
 public:

 virtual  T* ff()=0;
};



class B2 : public B1<A1>{
 public:

 virtual  A1* ff(){f();return 0;}
}obj;

int main(){
obj.ff();
}
