


#include <iostream>
using namespace std;
int main()
{
  int i = 2;
  int &r = i;
  
  i = r * r;
  i = r / r;
  i = r % r;

  if (i == 0 && r == 0)
    cout << "ok\n";
  else
    cout << "ng\n";

}
