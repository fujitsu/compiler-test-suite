#include <iostream>
using namespace std;


int x;
void func() { x = 1; }
int main()
{
  (func(), x) += 1;
  if (x == 2)
    {
      (func(), x) = 10;
      if (x == 10)
	cout << "ok\n";
      else
	cout << "ng2\n";
    }
  else
    cout << "ng1\n";
}
