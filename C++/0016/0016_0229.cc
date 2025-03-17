

class X {
public:
  int a;
  void *xp;
  class Y {
  public:
    int b;
  };
}xobj;

class A {
public:
  int i;
  int *p;
  int a[5];
  X xobj;
  X *xp;
  X xa[3];
  int X::* xmemp;
#ifdef INLFUNC
  void f(){
    xobj.*xmemp=10;
    (xobj.*xmemp)++;
  }
#else
  void f();
#endif
}aobj;

#ifndef INLFUNC
void A::f(){
  xobj.*xmemp=10;
  (xobj.*xmemp)++;
}
#endif

void g(int A::*mp){aobj.*mp=5;}

void h(){
  X A::* lp = &A::xobj;
  (aobj.*lp).a++;
}

static int * A::* sp = &A::p;
int (A::* gp)[5] = &A::a;
void * X::* mxp = &X::xp;

union U {
  int a;
  char b;
}uobj;

int U::* up = &U::a;

template <class T> class TM {
public:
  T t;
};
TM<int> tobj;
int TM<int>::* tp = &TM<int>::t;

X::Y yobj;
int X::Y::* yp = &X::Y::b;

namespace N {
  template <class T> class TNM {
  public:
    T t;
  };

  class CN {
  public:
    int c;
  };
}
N::TNM<int> nobj;
int N::TNM<int>::* np = &N::TNM<int>::t;

N::CN cobj;
int N::CN::* cp = &N::CN::c;

int A::* gap = &A::i;
int A::* (*gapp) = &gap;

#include <stdio.h>
int main(){
  static X* A::* sxp = &A::xp;
  aobj.xmemp = &X::a;
  aobj.f();
  g(&A::i);
  h();
  aobj.*sp=aobj.a;
  aobj.*sxp=&aobj.xobj;
  (aobj.*gp)[2]=10;
  uobj.*up=5;
  tobj.*tp=10;
  yobj.*yp=15;
  cobj.*cp=20;
  nobj.*np=25;
  aobj.*(*gapp)=30;
  uobj.a++;

  puts("ok");
}
