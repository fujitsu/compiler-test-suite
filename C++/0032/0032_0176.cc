#include <iostream>
using namespace std;

template <class T>
class A {
 public:
  int a;
  operator int(){ return 0;}
};

short operator +(A<unsigned short>, A<unsigned short>) 
{ cout << "ok\n"; return 0;}

template <class T>
 T operator +(A<T>&a2,int) { cout << "ng\n";  return T(1); }


A<unsigned short> cobj,cobj2,*acp;

int main()
{
  unsigned short r1;

  r1 = cobj+(cobj2);
}

