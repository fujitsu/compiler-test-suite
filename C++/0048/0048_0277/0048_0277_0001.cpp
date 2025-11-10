#include <cstdio>

template <typename T>
class TypeOp
{
public:
  typedef T         ArgT;
  typedef T         BareT;
  typedef T const   ConstT;
  typedef T &       RefT;
  typedef T &       RefBareT;
  typedef T const & RefConstT;
};

template <typename T>
class TypeOp<T const>
{
public:
  typedef T const   ArgT;
  typedef T         BareT;
  typedef T const   ConstT;
  typedef T const & RefT;
  typedef T &       RefBareT;
  typedef T const & RefConstT;  
};

template <typename T>
class TypeOp<T&>
{
public:
  typedef T &                         ArgT;
  typedef typename TypeOp<T>::BareT   BareT;
  typedef T const                     ConstT;
  typedef T &                         RefT;
  typedef typename TypeOp<T>::BareT & RefBareT;
  typedef T const &                   RefConstT;
};

template <>
class TypeOp<void>
{
public:
  typedef void       ArgT;
  typedef void       BareT;
  typedef void const ConstT;
  typedef void       RefT;
  typedef void       RefBareT;
  typedef void       RefConstT;
};

template <typename T>
void apply(typename TypeOp<T>::RefT arg,
	   void (*func)(T))
{
  func(arg);
}

void func1(int val)
{
  std::printf("func1: %d\n",val);
}

void func2(int& val)
{
  std::printf("func2: %d\n", val);
  val = 20;
}

void func3(const int val)
{
  std::printf("func3: %d\n", val);
}

void sub1()
{
  int val = 10;
  apply(val, func1);
  apply(val, func2);
  apply(val, func3);
}
