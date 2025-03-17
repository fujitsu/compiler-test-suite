








#include <iostream>
using namespace std;

int func()
{
  return 1;
}
int main()
{
  int (&fr)() = func;
  int i;

  i = fr();
  if (i == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}
