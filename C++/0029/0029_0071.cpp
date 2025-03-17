#include <iostream>

template <class T> class Foo {
public:
  typedef T Type;

  Foo() {}
  explicit Foo(Type val) : m_val(val) {}
  explicit Foo(Type *ptr) : m_ptr(ptr) {}

  Type getVal() { return m_val; }
  void setVal(Type val) { m_val = val; }

  Type *getPtr() { return m_ptr; }
  void setPtr(Type *ptr) { m_ptr = ptr; }

private:
  Type m_val;
  Type *m_ptr;
};

int main() {

  Foo<char> a("char *");
  std::cout << a.getPtr() << std::endl;

  a.setPtr("modified");
  std::cout << a.getPtr() << std::endl;

  Foo<int> b(1);
  std::cout << b.getVal() << std::endl;

  b.setVal(10);
  std::cout << b.getVal() << std::endl;

  std::string str("string");
  Foo<std::string> c(str);
  std::cout << c.getVal() << std::endl;

  c.setVal("modified");
  std::cout << c.getVal() << std::endl;

  return 0;
}
