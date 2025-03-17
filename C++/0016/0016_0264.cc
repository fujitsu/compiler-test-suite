class A {
public:
  short              s;
  int                i;
  long long          L;
  class B {
  public:
    int a,b,c;
    class C {
    public:
      int a,b,c;
    }cobj;
  }bobj;
}aobj={1,2,3,{4,5,6,{7,8,9}}};

A *paobj = &aobj;

namespace N1 {
  short     (A::* N1s) = &A::s;
  int       (A::* N1i) = &A::i;
  long long (A::* N1L) = &A::L;
}
namespace N2 {
  class A2 {
  public:
    short              s;
    int                i;
    long long          L;
  }a2obj={1,2,3};

  A2 *pa2obj = &a2obj;

  short     (A2::* N2s) = &A2::s;
  int       (A2::* N2i) = &A2::i;
  long long (A2::* N2L) = &A2::L;
}

int A::B::* Mb = &A::B::b;
int A::B::C::* Mc = &A::B::C::c;

int a;

template <class T> class D {
public:
  long long L;
  T a;
  D<T>():L(1),a(2){}
};
D<int> dobj;
template <class T> class E {
public:
  T x;
  D<int> *dp;
  E<T>():x(10),dp(&dobj){}
};
E<char> eobj;
E<char> *peobj = &eobj;

D<int> * E<char>::* Mdp = &E<char>::dp;

using namespace N1;
using N2::N2s;
using N2::N2i;
using N2::N2L;

#include <stdio.h>
int main(){
  short     (A::* Ls) = &A::s;
  int       (A::* Li) = &A::i;
  long long (A::* LL) = &A::L;

  a = aobj.*N1s + aobj.*N1i + aobj.*N1L;
  a += aobj.*Ls + aobj.*Li + aobj.*LL;
  a += N2::a2obj.*N2s + N2::a2obj.*N2i + N2::a2obj.*N2L;
  a += aobj.bobj.*Mb + aobj.bobj.cobj.*Mc;
  a += (*(eobj.*Mdp)).a;  
  a++;

  puts("ok");
}
