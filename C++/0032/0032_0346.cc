






#include <iostream>
using namespace std;

int x;
int &func()
{
  return x;
}
int main()
{
  func() = 10;
  if (x == 10)
    cout << "ok\n";
  else
    cout << "ng\n";
}
