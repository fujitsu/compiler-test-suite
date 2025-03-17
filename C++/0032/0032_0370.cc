







#include <iostream>
using namespace std;

int main()
{
  int i = 2;
  int j = 3;
  int &ri = i;
  int &rj = j;

  rj = ri ^ rj;
  if (rj == 1 && j == 1)
    cout << "ok\n";
  else
    cout << "ng " << rj << "\n";
}
