







#include <iostream>
using namespace std;

int main()
{
  int i = 2;
  int j;
  int &ri = i;
  int &rj = j;

  rj = ri & ri;
  if (rj == 2 && j == 2)
    cout << "ok\n";
  else
    cout << "ng\n";
}
