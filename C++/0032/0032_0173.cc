#include <iostream>
using namespace std;


template <class T>
class A {
 public:
  int a;
  short operator +(A<unsigned short>) { cout << "ok\n"; return 0;}

};


template <class T>
 T operator +(A<T>&a2,A<T>&a3) { cout << "ng\n";  return T(1); }


A<unsigned short> cobj,cobj2,*acp;

int main()
{
  unsigned short r1;

  r1 = cobj+(cobj2);
}

