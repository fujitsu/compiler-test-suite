#include <cstdio>
#include "007.hpp"

class MyClass {};

void myFunc() {}

enum E { e1 };

template <typename T>
void check()
{
  if (TypeT<T>::IsFundaT) {
    std::puts("IsFundaT");
  }

  if (TypeT<T>::IsPtrT) {
    std::puts("IsPtrT");
  }

  if (TypeT<T>::IsRefT) {
    std::puts("IsRefT");
  }

  if (TypeT<T>::IsArrayT) {
    std::puts("IsArrayT");
  }

  if (TypeT<T>::IsFuncT) {
    std::puts("IsFuncT");
  }

  if (TypeT<T>::IsPtrMemT) {
    std::puts("IsPtrMemT");
  }

  if (TypeT<T>::IsEnumT) {
    std::puts("IsEnumT");
  }

  if (TypeT<T>::IsClassT) {
    std::puts("IsClassT");
  }
}

template <typename T>
void checkT(T)
{
  check<T>();

  if (TypeT<T>::IsPtrT ||
      TypeT<T>::IsPtrMemT) {
    check<typename CompoundT<T>::BaseT>();
  }
}

void sub1()
{
  check<int>();
}

void sub2()
{
  check<int&>();
}

void sub3()
{
  check<char[42]>();
}

void sub4()
{
  check<MyClass>();
}

void sub5()
{
  E *ptr = 0;
  checkT(ptr);
}

void sub6()
{
  checkT(42);
}

void sub7()
{
  checkT(myFunc);
}

void sub8()
{
  char (MyClass::* memPtr) [] = 0;
  checkT(memPtr);
}
