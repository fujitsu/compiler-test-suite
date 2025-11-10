#include <iostream>

template <class T>
class B1
{
public:
  typedef T Type;

  B1() {}
  explicit B1(Type val) : m_val(val) {}
  explicit B1(Type *ptr) : m_ptr(ptr) {}

  Type getVal() { return m_val; }
  void setVal(Type val) { m_val = val; }

  Type *getPtr() { return m_ptr; }
  void setPtr(Type *ptr) { m_ptr = ptr; }

private:
  Type m_val;
  Type *m_ptr;
};

void sub1()
{
  
  B1<char> a("char *");
  std::cout << a.getPtr() << std::endl;

  a.setPtr("modified");
  std::cout << a.getPtr() << std::endl;

  
  B1<int> b(1);
  std::cout << b.getVal() << std::endl;

  b.setVal(10);
  std::cout << b.getVal() << std::endl;

  
  std::string str("string");
  B1<std::string> c(str);
  std::cout << c.getVal() << std::endl;

  c.setVal("modified");
  std::cout << c.getVal() << std::endl;
}
