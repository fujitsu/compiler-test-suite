#include <iostream> 
using namespace std;

template <class T> int f(T, T = T()){ return 1;}
struct A {
  A(int){}
  
};

A a(1);
int i = f(a,a);
int main()
{
  if (i==1)
    cout << "ok" << endl;
  else
    cout << "ng" << endl;
}
