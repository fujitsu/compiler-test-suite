
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
inline C::C(){}
inline C::C(int a){}
inline C::C(char b){}
inline C::C(float c){}
inline int C::func(int x){return 0;}
inline float C::func(float x){return 0;}
inline bool C::func(bool x){return 0;}
inline C::~C(){}

class C1 {
  class C11 {
    class C {
      C();
      ~C();
    };
  };
};
inline C1::C11::C::C(){}
inline C1::C11::C::~C(){}

namespace N {
  class C {
    C();
    ~C();
  };
}
inline N::C::C(){}
inline N::C::~C(){}

long long C(long long y){ return 0L; }
#include <stdio.h>
int main(){
  puts("ok");
}
