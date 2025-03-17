#include <iostream>
using namespace std;

int i=0;
class A {
 public:
 class D { public: ~D(){i+=10;}};
 class B: D { 
 public:
             ~B(){i++;}
               void f(A::B*);
            };
};
void A::B::f(A::B*p){
  A::D *pp;
  pp= new A::B[4];
  delete []pp;
  if (i==40) cout << "ok\n";
}
 
int main(){
 A::B obj;
 obj.f(&obj);
 }
