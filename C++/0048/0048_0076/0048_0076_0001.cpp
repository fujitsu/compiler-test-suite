#include <cstdio>
#include <iostream>
#include "000.hpp"

static volatile int gVal;

template <typename T>
class Base1
{
public:
  void method()
  {
    static_cast<T&>(*this).method_impl();
  }
};

class Derived1: public Base1<Derived1>
{
public:
  void method_impl()
  {
    gVal += 1;
  }
};

class Derived2: public Base1<Derived2>
{
public:
  void method_impl()
  {
    gVal += 2;
  }
};

void sub1()
{
  Derived1 d1;
  Derived2 d2;

  d1.method();
  d2.method();

  std::printf("%d\n", gVal);
}

template <typename T>
class Base2
{
public:
  virtual void method()
  {
    static_cast<T*>(this)->method_impl();
  }
};

class Derived3: public Base2<Derived3>
{
public:
  void method_impl()
  {
    gVal += 3;
  }
};

class Derived4: public Base2<Derived4>
{
public:
  void method_impl()
  {
    gVal += 4;
  }
};

void sub2()
{
  Derived3 d3;
  Derived4 d4;

  d3.method();
  d4.method();

  std::printf("%d\n", gVal);
}

class Object
{
public:
  int ival;
  double dval;
  bool bval;
  std::string str;

  Object() :
    ival(0), dval(0.0), bval(false), str("abc")
  {}

  ~Object()
  {
    std::cout << ival << " "
	      << bval << " "
	      << bval << " "
	      << str  << std::endl;
  }
} obj;

template <typename T>
class Base3
{
public:
  virtual void updateInt()    { static_cast<T&>(*this).derivedUpdateInt();    }
  virtual void updateFloat()  { static_cast<T&>(*this).derivedUpdateFloat();  }
  virtual void updateBool()   { static_cast<T&>(*this).derivedUpdateBool();   }
  virtual void updateString() { static_cast<T&>(*this).derivedUpdateString(); }
  virtual void updateAll()    { static_cast<T&>(*this).derivedUpdateAll();    }
};

class Derived5: public Base3<Derived5>
{
public:
  void derivedUpdateInt()    { obj.ival = 1;    }
  void derivedUpdateFloat()  { obj.dval = 1.0;  }
  void derivedUpdateBool()   { obj.bval = true; }
  void derivedUpdateString() { obj.str  = "A";  }
  void derivedUpdateAll() {}

  ~Derived5()
  {
    obj.ival = -1;
    obj.dval = -1.0;
    obj.bval = false;
    obj.str = "destruct";
  }
};

class B : public Base3<B>
{
public:
  void derivedUpdateInt()    {}
  void derivedUpdateFloat()  {}
  void derivedUpdateBool()   {}
  void derivedUpdateString() {}
  void derivedUpdateAll()
  {
    obj.ival = 100;
    obj.dval = -10.0;
    obj.bval = true;
    obj.str = "update all";
  }
};

void sub3()
{
  Derived5 *a = new(std::nothrow) Derived5;
  a->derivedUpdateInt();
  a->derivedUpdateFloat();
  a->derivedUpdateBool();
  a->derivedUpdateString();
  if (obj.ival != 1 	||
      obj.dval != 1.0 	||
      !obj.bval 	||
      obj.str  != "A") {
    std::printf("NG1\n");
  }

  delete a;
  if (obj.ival != -1 	||
      obj.dval != -1.0 	||
      obj.bval 		||
      obj.str  != "destruct") {
    std::printf("NG2\n");
  }

  B b;
  b.derivedUpdateAll();
  if (obj.ival != 100 	||
      obj.dval != -10.0 ||
      !obj.bval 	||
      obj.str  != "update all") {
    std::printf("NG3\n");
  }

  std::printf("OK\n");
  obj.str = "finish";
}
