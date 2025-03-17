







#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){}
};
int main()
{

  if (&A::func && &A::func && &A::a) 
    cout << "ok\n";
  else
    cout << "ng\n"; 

}
