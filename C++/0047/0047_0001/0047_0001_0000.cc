#include "001.hh"

#include <stdio.h>
#include <typeinfo>

using namespace std;

CBase::~CBase() {}

void func(CBase *p)
{
  const type_info& info = typeid(*p);
  if (info == typeid(CBase)) {
    puts("CBase");
  } else if (info == typeid(CSub1)) {
    puts("CSub1");
  } else if (info == typeid(CSub2)) {
    puts("CSub2");
  } else {
    puts("other");
  }
}

void func1()
{
  func(new CBase());
}

int main()
{
  func1();
  func2();
  func3();
}
