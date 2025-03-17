class A {
 public: 
 int a;
 void func(){}
 typedef int I;
 struct B {
   int b;
 };
}x;
namespace B {
 int a; 
 void func(){}
 typedef int I;
 struct C {
   int b;
 };
};
 A::B obj;
using namespace B;
 A::I obj2;
 I obj3;
 C obj4;
#include <stdio.h>
int main(){
  puts("ok");
} 
