







#include <iostream>
using namespace std;

struct A {
  int a;
  void func(){}
};
int main()
{

  if (&A::a)
    if (&A::func) 
      if (&A::func)
	cout << "ok\n";
      else
	cout << "ng3\n";
    else
      cout << "ng2\n";
  else
    cout << "ng\n"; 

}
