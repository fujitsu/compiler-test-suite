#include <iostream>

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
    std::cout << ival << std::endl;
    std::cout << bval << std::endl;
    std::cout << bval << std::endl;
    std::cout << str  << std::endl;
  }
} obj;

template <class T>
class Base
{
public:
  virtual void updateInt()    { static_cast<T&>(*this).derivedUpdateInt();    }
  virtual void updateFloat()  { static_cast<T&>(*this).derivedUpdateFloat();  }
  virtual void updateBool()   { static_cast<T&>(*this).derivedUpdateBool();   }
  virtual void updateString() { static_cast<T&>(*this).derivedUpdateString(); }
  virtual void updateAll()    { static_cast<T&>(*this).derivedUpdateAll();    }
};

class A : public Base<A>
{
public:
  void derivedUpdateInt()    { obj.ival = 1;    }
  void derivedUpdateFloat()  { obj.dval = 1.0;  }
  void derivedUpdateBool()   { obj.bval = true; }
  void derivedUpdateString() { obj.str  = "A";  }
  void derivedUpdateAll() {}

  ~A()
  {
    obj.ival = -1;
    obj.dval = -1.0;
    obj.bval = false;
    obj.str = "destruct";
  }
};

class B : public Base<B>
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

int main()
{
  A *a = new(std::nothrow) A;
  a->derivedUpdateInt();
  a->derivedUpdateFloat();
  a->derivedUpdateBool();
  a->derivedUpdateString();
  if (obj.ival != 1 	||
      obj.dval != 1.0 	||
      !obj.bval 	||
      obj.str  != "A") {
    std::cout << "NG" << std::endl;
  }

  delete a;
  if (obj.ival != -1 	||
      obj.dval != -1.0 	||
      obj.bval 		||
      obj.str  != "destruct") {
    std::cout << "NG" << std::endl;
  }

  B b;
  b.derivedUpdateAll();
  if (obj.ival != 100 	||
      obj.dval != -10.0 ||
      !obj.bval 	||
      obj.str  != "update all") {
    std::cout << "NG" << std::endl;
  }

  std::cout << "OK" << std::endl;
  obj.str = "finish";
  return 0;
}
