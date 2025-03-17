
double C(double x){ return 0.0; }

class C {
public:
  C();
  C(int);
  C(char);
  C(float);
  int func(int);
  float func(float);
  bool func(bool);
  ~C();
};
C::C(){}
C::C(int a){}
C::C(char b){}
C::C(float c){}
int C::func(int x){return 0;}
float C::func(float x){return 0;}
bool C::func(bool x){return 0;}
C::~C(){}

class C1 {
  class C11 {
    class C {
      C();
      ~C();
    };
  };
};
C1::C11::C::C(){}
C1::C11::C::~C(){}

namespace N {
  class C {
    C();
    ~C();
  };
}
N::C::C(){}
N::C::~C(){}

long long C(long long y){ return 0L; }
#include <stdio.h>
int main(){
  puts("ok");
}
