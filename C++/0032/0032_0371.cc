







#include <iostream>
using namespace std;

int xi = 12;
int xj = 7;
int &xri() { return xi; }
int &xrj() { return xj; }

int main()
{
  xrj() = xri() | xrj();
  if (xj == 15)
    cout << "ok\n";
  else
    cout << "ng " << xj << "\n";
}
