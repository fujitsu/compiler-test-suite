class Base {
 public:
 int ** a; 
 void func(int){};
 class Nest1 {};
 protected:
  char b[30];
  int * func2 (){return 0;}
  typedef char * TD;
}; 

class A : private Base {
 public:
 using Base::a; 
 using Base::func;
 using Base::Nest1;
 protected:
 using Base::b;
 using Base::func2 ;
 using Base::TD;
};

namespace LONGLONGNAME {
  int la;
};
namespace B {
 namespace SHORT = LONGLONGNAME;
 namespace S = SHORT;
 namespace X = B;
};
#include <stdio.h>
int main(){
  puts("ok");
}
