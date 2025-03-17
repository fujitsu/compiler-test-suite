void f(){}

class D {
public:
  void fd1();
  void fd2();
  int id;
};
class B1 {
public:
  int ib1;
  void fb1();
  virtual void fb2(){};
};
class B2 {
public:
  int ib2;
  void fb2();
};
class C1 : private B1, protected B2{
public:
  int ic1;
  void f1();
  void f2(){}
  virtual void fb2(){};
  static int s1;
  friend class D;
  friend void f();
  class N1 {
  public:
    int an1;
    class N2 {
    public:
      int an2;
    }n2obj;
  }n1obj;
  typedef N1 T1;
  typedef N1::N2 T2;
  T1 t1obj;
  T2 t2obj;
  using B1::ib1;
  using B2::ib2;
protected:
  int ic2;
  void fc1();
private:
  int ic3;
  void fc2();
}cobj;

int C1::s1;
#include <stdio.h>
int main(){

  puts("ok");
}
