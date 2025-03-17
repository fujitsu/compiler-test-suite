#include <stdio.h>
class B { public: int b; B(){printf("ok\n");}};
 
template <class T>
class A:public B{
public:
  A():T(){}
};


int main(){

  A<B> aobj;


}
