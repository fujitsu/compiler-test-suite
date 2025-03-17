#include <iostream>
using namespace std;

class A {
  private:
    A(A& r){ cout << "ng A(A&)\n";}
  public:
    int mem;
    A(int i){ mem = i;}
};

A a1(0),a2(2);
int main()
{
  a1 = a2;
  if (a1.mem == 2)
    cout << "ok\n";
  else
    cout << "ng\n";
}
