class T1{};
struct T2{};
union T3{};
enum T4{};

class A {
  class T1;
  struct T2;
  union T3;
  enum T4{};
  void func1();
  T1 *func2(...);
  int func3(int,...);
};
inline void  A::func1(){}


class B {
  class TA{ int a; };
  struct TB{ char b; };
  union TC{ float c; };
  enum TD{ e1 };
  void func1(char x,int y){}
  TA *func2(void * p){ return 0; }
  int func3(int,char c){ return 0; }
};


class C {
  class T1;
  struct T2;
  union T3;
  enum T4{};
  void func1();
  T1 *func2(...);
  int func3(int,...);
  class TA{ int a; };
  struct TB{ char b; };
  union TC { float c; };
  enum TD{ e1 };
  void funca(char x,int y){}
  TA *funcb(void * p){ return 0; }
  int funcc(int,char c){ return 0; }
};

#include <stdio.h>
int main(){
  puts("ok");
}
