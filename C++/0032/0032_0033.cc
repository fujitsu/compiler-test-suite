#include <iostream>
using namespace std;

template <class T>
class A {
 public:
 T operator +(A<T>&a2);
};

template <class T>
 T A<T>::operator +(A<T>&a2){ cout << "ok\n"; return T(2);}


template <class T>
 T operator +(A<T>&a2,A<T>&a3) { cout << "ng\n";  return T(1); }

A<unsigned short> cobj,cobj2,*acp;

unsigned short operator +(A<unsigned short>&a2, int a3) 
{ cout << "ng\n";  return 1; }

int main()
{
  unsigned short r1;

  r1 = cobj+(cobj2);
}

