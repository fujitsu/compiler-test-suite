#include <stdio.h>
class A {
 public:
  A(unsigned int);
  A();
};
template <class T> class B : public A {
 public:
  B() : A() {}
  B(unsigned int m) : A(m) {}
};

class C {
  B<int>*           oid_tree;
};

int main(){ printf("ok\n");}
