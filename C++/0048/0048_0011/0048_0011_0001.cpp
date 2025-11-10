#include <cstdio>

template <typename T>
class IsClassT
{
private:
  typedef char One;
  typedef struct { char a[2]; } Two;
  
  template <typename U> static One test(int U::*);
  template <typename U> static Two test(...);

public:
  enum { Yes = sizeof(IsClassT<T>::test<T>(0)) == 1 };
  enum { No = !Yes };
};

class MyClass {};
struct MyStruct {};
union MyUnion {};

enum MyEnum { e1 } e;

void myFunc() {}

template <typename T>
void check()
{
  if (IsClassT<T>::Yes) {
    std::puts("is class");
  }
  else {
    std::puts("not class");
  }
}

template <typename T>
void checkT(T)
{
  check<T>();
}

void sub1()
{
  check<int>();
}

void sub2()
{
  check<MyClass>();
}

void sub3()
{
  MyStruct s;
  checkT(s);
}

void sub4()
{
  check<MyUnion>();
}

void sub5()
{
  checkT(e);
}

void sub6()
{
  checkT(myFunc);
}
