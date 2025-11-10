#ifndef _B_HPP
#define _B_HPP

class B1
{
public:
  static int val;
  static void sub1(void);
};

class B2
{
public:
  static const int val = 2;
  static void sub2(void);
};

class B3
{
public:
  mutable int val;
  
  B3():
    val(2) {}

  void sub3(void) const;
};

extern void sub1(void), sub2(void), sub3(void);

#endif
