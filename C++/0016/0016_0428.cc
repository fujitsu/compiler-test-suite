#include "041.h"
typedef int I;
class A {
 public:
 A():a(0){}
 const int a;
 volatile short b;
 void (*fp)(int,short);
 void func(I);
};
namespace NA{
 int i;
}
namespace NB{
 using namespace NA;
 int ii;
}
void func(){
 int local_var=0;
 local_var++;
}
void func2(){
 int other_var=0;
 other_var++;
}
class VA{};
class X : virtual public VA{};
class Y: virtual protected VA,public X{ };
#include <stdio.h>
int main(){
  int i=1;
  func();
  func2();
  if (i!=1) goto main_label;
  inc_func();
main_label:;
  try {
    I obj=0;
    throw obj;
  }
  catch (I){
  }

  puts("ok");
}
