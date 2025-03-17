#include <stdio.h>

int ext_var = 0;

class A {
private:
  int a;
public:
  A(int i) { a = i; }
};

class B : public A {
public:
  B(int i) : A(i) { }
};

class C : public B {
private:
  int c;
public:
  C(int i) : B(i) { c = i; }
  void C_inc_private() { c++; }
  int  C_get_private() { return c;}
};

int main() {
  C cobj(8);
  int ans;

  cobj.C_inc_private();
  ans = cobj.C_get_private();
  if (ans == 9) {
    printf("OK\n");
  } else {
    printf("NG %d\n",ans);
  }
  return 0;
}
