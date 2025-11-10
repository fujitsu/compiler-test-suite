#ifndef _B_HPP
#define _B_HPP

extern int g_val;

extern void sub1(void);
extern void sub2(void) throw();
extern void sub3(void) noexcept;
extern void sub4(void) noexcept(true);
extern void sub5(void) noexcept(false);

class Foo
{
private:
  int m_val;

public:
  Foo(): m_val(0) {}

  void sub1(void);
  void sub2(void) throw();
  void sub3(void) noexcept;
  void sub4(void) noexcept(true);
  void sub5(void) noexcept(false);

  int getVal() const { return m_val; }
};

#endif
