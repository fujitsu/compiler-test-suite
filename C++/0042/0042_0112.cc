#include <string>
#include <cstdio>

class A {
public:
  A() {}
  A(char *cstr): str(cstr) {}
  void put() {puts(str);}
private:
  int a = 5, b = 10;
  char *str;
};


class B {
public:
  B() {}
  void put() {a.put();}
private:
  A a = "OK";
};

int main()
{
  B b;
  b.put();
}
