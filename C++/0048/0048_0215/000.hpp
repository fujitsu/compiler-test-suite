#ifndef _B_HPP
#define _B_HPP

class B
{
public:
  B();
  ~B();

  void sub1(void);
  void sub2(void) const;
  void sub3(void) volatile;
  void sub4(void) const volatile;
  void sub5(void) __restrict__;
  void sub6(void) __restrict;
};

#endif
