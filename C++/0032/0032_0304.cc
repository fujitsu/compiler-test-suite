
#include <iostream>
using namespace std;

int i=0;
class A {
 public:
 class D { public: virtual ~D(){
#ifndef __GCC__
                                i+=10
#endif 
                                     ;}};
 class E: public D { public: virtual ~E(){
#ifdef __GCC__
                                          i+=10
#endif 
                                               ;}};
 class B: E { 
 public:
               void f(A::B*);
            };
};
void A::B::f(A::B*p){
  A::D *pp;
  pp= new A::B[4];
  delete []pp;
  if (i==40) cout << "ok\n";
  else cout << "ng " << i << endl;
}

int main(){
 A::B obj;
 obj.f(&obj);
 }
