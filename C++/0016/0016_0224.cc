
template<class T> class FF {
public:
  T func();
  float func(float);
  template<class T1> class FF1 {
  public:
    T1 func();
    template<class T2, int i> class FF2 {
    public:
      T2 func();
    };
  };
};
template<>inline short FF<short>::func(){return 0;}
template<>inline float FF<int>::func(float a){return a;}
template<>
template<>
inline int FF<char>::FF1<int>::func(){return 0;}
template<>
template<>
template<>
inline long FF<long long>::FF1<char>::FF2<long,10>::func(){return 0;}

template<class T> class F {
public:
  T func();
};
template<>inline double F<double>::func(){return 0.0;}

class A {
public:
  void func();
  class B {
  public:
    void func();
    class C {
    public:
      void func();
    };
  };
}x;
inline void A::func(){}
inline void A::B::func(){}
inline void A::B::C::func(){}

namespace N {
  bool func(bool);
  class S {
  public:
    long long func(long long);
  };
}
using namespace N;
inline bool N::func(bool a){return a;}
inline long long S::func(long long a){return a;}

class X{
public:
  void func();
  template<class X1> class XX {
  public:
    X1 func(X1);
  };
};
inline void X::func(){}
template<>inline int X::XX<int>::func(int i){return i;}

template<class Y1> class Y {
public:
  Y1 func(Y1);
  class YY {
  public:
    long func(long);
  };
};
template<>inline char Y<char>::func(char i){return i;}
template<>inline long Y<char>::YY::func(long i){return i;}

#include <stdio.h>
int main(){
  puts("ok");
}
