
int i;
class X {
 public:
  class Y {
  public:
   int xy;
 };
};
template <class T>
class A {
 public:
  void func(){
   i++;
   i--;
 }
};
template <class T> void temp_func(T x){
}
A<X::Y> obj;
#include <stdio.h>
int main(){
 obj.func();
 X::Y xyobj;
  temp_func(xyobj);

  puts("ok");
}
