



#include <iostream>
using namespace std;

int main()
{
  int i = 2;
  int &r = i;
  const int &r3 = 3;

  r = r << r;
  r = r >> r3;
  if (i == 1 && r == 1)
    cout << "ok\n";
  else
    cout << "ng\n";
}

  
