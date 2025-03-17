#include <new>
#include <iostream>
using namespace std;

int i=0;
class A {
 public:
 class D { public: virtual ~D(){
#ifndef __GCC__
                                 i++;
#endif 
                                     }};
 class B: D { 
 public:
   ~B(){ 
#ifdef __GCC__
         i++;
#endif 
             }
               void f(A::B*);
            };
};
void A::B::f(A::B*p){
  A::D *pp;
  pp= new A::B[3];
  delete []pp;
  if (i==3) cout << "ok\n";
  else cout << "ng " << i << endl;
}

int main(){
 A::B obj;
 obj.f(&obj);
}
