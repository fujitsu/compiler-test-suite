#include <iostream> 
using namespace std;


typedef void (*PF)(int);
typedef void (*PF2)(float);

void func(int i)
{
  if (i==10)
    cout << "ok" << endl;
  else
    cout << "ng" << endl;
}

struct A {
  operator PF() { return func; }
  operator PF2();
} a;

int main()
{
  a(10);    
}
