#ifndef _B_HPP
#define _B_HPP

extern int g_val;

void sub1(void);
void sub2(void) throw();
void sub3(void) noexcept;
void sub4(void) noexcept(true);
void sub5(void) noexcept(false);

class Foo
{
public:
  Foo() : m_val(0) {}
  ~Foo() {}
  
  int getVal() const { return m_val; }
  
  void sub1(void);
  void sub2(void) throw();
  void sub3(void) noexcept;
  void sub4(void) noexcept(true);
  void sub5(void) noexcept(false);
  
private:
  int m_val;
};

#endif
