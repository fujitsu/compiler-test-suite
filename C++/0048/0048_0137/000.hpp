#ifndef _B_H
#define _B_H

class Foo
{
public:
  Foo() {}
  ~Foo() {}

  void func1(int * __restrict__ pval);
  void func2(int val) __restrict__ ;
};

#endif
