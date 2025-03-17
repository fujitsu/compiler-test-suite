
#include <iostream>
using namespace std;

int i=0;
class A {
 public:
 class D { public: };
 class E: public D { public: virtual ~E(){i+=10;}};
 class B: E { 
 public:
               void f(A::B*);
            };
};
void A::B::f(A::B*p){
  A::B *pp;
  pp= new A::B[4];
  delete []pp;
  if (i==40) cout << "ok\n";
}
 
int main(){
 A::B obj;
 obj.f(&obj);
 }
